# DeepFreeze -- FixyNN Hardware Toolflow

**DeepFreeze** is the tool used for modelling PPA and generating RTL for the **FixyNN project**. Scripts are included to generate RTL from a TensorFlow graph, and to synthesize/simulate that design. To work with a non-Tensorflow graph, you must write your own Layer data structure to feed to a VerilogGenerator object (see the end of `gen_verliog.py` for example usage).

For more information on **FixyNN**, including a description of DeepFreeze in context, see the following paper:

TODO


## Getting Started

This tool was built and tested using Python 2.7.15 and Tensorflow 1.10.1.

### Prerequisites

Required Python packages are numpy and tensorflow. To install:

```
pip install numpy tensorflow
```

### Running a test

```
cd deep_freeze/
bash run.sh
```

### Adding new models

To add a model for RTL generation or modeling, you need to provide:
 * A name for the model
 * a checkpoint file containing the trainable variables of the model(see https://www.tensorflow.org/guide/saved_model#build_and_load_a_savedmodel)
 * a meta graph file defining the structure of the inference graph
 * a JSON file describing the desired quantization for the model
 * a JSON file mapping layer names to tensor names (just as `mobilenet_base` returns in https://github.com/tensorflow/models/blob/master/research/slim/nets/mobilenet/mobilenet.py)
 * a directory to store output files

## Technical details

### Fixed-weight datapaths

Each layer in a fixed network is defined by either a generated verilog module or a parameterized instantiation of a handwritten module.
Any layer with trainable variables is generated, and all others are instantiated.
Trainable variables are hard-coded into the RTL with variable precision, and are implemented in a synthesized design as fixed scalars.
What would traditionally be implemented in a MAC unit in a programmable accelerator is instead composed of fixed scalars followed by a carry-save adder tree in a fixed-weight design.
This is very efficient in energy, but requires a large silicon area.
Silicon area grows roughly linearly with the nuber of fixed variables.

### Line buffering

To achieve high utilization of fixed datapaths, we fully pipeline layers together.
This requires buffering activations between layers.
We can avoid buffering the entire activation of a layer by utilizing a line buffer.
This [article](http://blog.teledynedalsa.com/2012/05/image-filtering-in-fpgas/) provides a fundamental explanation what line buffers and and how they are used.

Our implementation of a line buffer is composed of two parts: an SRAM buffer, and a register buffer.
The SRAM stores activations for as many rows as need to be comsumed at a time (equal to the height of the following kernel).
The register buffer follows the SRAM buffer and stores MxN activations for the following MxN kernels. This eliminates unnecessary reads from the SRAM buffer.

The SRAM size required for a layer is `IM_HEIGHT * IM_WIDTH * NCHANNELS * NBITS`.
This is broken up into `IM_HEIGHT * IM_WIDTH` words of size `NCHANNELS * NBITS`.
The register buffer size is `K_HEIGHT * K_WIDTH * NCHANNELS * NBITS`.

### Optimizations

Fixing layers in hardware provide opportunity for a variety of aggressive optimizations (both hardware optimizations and optimizations in model design). 

##### Network architecture

Improvements in network architecture may result in hardware PPA improvements.
For example, depthwise separable layers are able to achieve similar accuracy as traditional convolutional layers with 8-9x fewer weights.
These layers perform very well in FixyNN due to reduced area costs.
Any other techniques that reduce model size or improve accuracy can benefit FixyNN.

##### Tuning trained variables

Fixing weights into silicon enables us to benefit from reduced complexity of certain values.
Zero value weights are one example: they can be explicitly removed from hardware with no overhead.
This makes pruning especially powerful and attractive.

Also, values with low Hamming weights, i.e. the number of non-zero bits in their binary representation, are cheap to implement in fixed hardware.
This is because fixed scalars are implemented as a series of shifts and adds.
The fewer non-zero bits of the fixed multiplicand, the fewer shifts and adds required.
The synthesis tool is also able to take advantage of values with high Hamming weight relative to the total number of bits required to represent the number.
For example, a scalar `x * 239` (Hamming weight = 7, NBITS = 8) can be implemented as `x << 8 - x << 5` in hardware.

##### Partial line buffering

For high resolution images, each row of a line buffer requires a significant area of SRAM.
We can eliminate some of this SRAM by buffering only fractions of a line at a time, and making several passes down the image.
This comes at the cost of increased control hardware and some redundant computation of activations on the boundry of the line buffer range.
This redundant computation incurs minimal cost of energy and latency because fixed-weight hardware is very efficient.

##### Fused layers

Any 1x1 kernel does not require buffer preceeding it because it can directly consume the activations generated by the previous layer.
This results in depthwise separable layers not requiring any buffering between the depthwise and pointwise convolutions.
Therefore we may fuse these two operations into one cambinational block.

### Discussion

##### conv2d vs dense

conv2d layers are effective in this design because they exhibit high weight reuse, which results in relatively low area cost.
dense layers exhibit no weight reuse.
Therefore, dense layers result in a very inefficient use of area.
Additionally, dense layers do not allow for line buffering, which results in quite large register areas.

Our work for sysml 2019 (see `sysml_2019/`) explores fully-fixed CNN feature extractors.
The PPA for that feature extractor is great because it only contains conv2d layers.
Entire networks implemented in fixed hardware must pay the area cost that dense layers demand.
This may be acceptible for small IoT models.

##### Front-end vs back-end behavior

CNNs typically exhibit the behavior where front-end layers have many input pixels and a small number of kernels, whereas back-end layers have fewer input pixels and a large number of kernels.
This results in SRAM area being concentrated toward the front of the network pipeline, while combinational area is concentrated toward the back of the network pipeline.

Any layer with a stride greater than 1x1 produces fewer activation pixels than it consumes per image.
For example, a pool2d layer that strides 2x2 over a 100x100 image produces a 50x50 image, which is a 4x reduction in pixels.
This results in following layers having 1/4x the number of active cycles (each output pixel per layer requires 1 cycle).
This means that very deep network pipelines with a lot of down-sampling will be greatly bottlenecked by the front-end layers, resulting in low utilization of backend layers.

This insight helps us select models that will translate well into hardware.
Certain architectures perform early downsampling of activations to reduce latency on a CPU by reducing total number of MACs (at the cost of model size) (see [FD-MobileNet](https://arxiv.org/abs/1802.03750)).
Models implemented in FixyNN want to make the opposite trade off: to reduce the number of parameters at the cost of computation (as area is the main limitation of performance in a real-world system).

##### Domain adaption

Fixing a portion of a CNN in hardware makes it difficult to reuse that hardware for some other purpose.
Our work for sysml 2019 explores this trade-off and demonstrates that some amount of fixed hardware is able to generalize to many different models.
Future work will focus on further improving the generalization of fixed hardware by adding some programmability (while still benefitting from the efficiency of fixed-weight hardware).

### TODOs

 * Add support for `SAME` padding by modifying `sram_controller.sv`
 * Generalize poolling layers to any kernel size.
 * Automate testing and validation
 * Implement `flatten.sv` to enable fully-fixed image classification networks by flattening an image from 2D layers to dense layers.
 * Implement batch normalization layers
 * Improve sram logic such that it begins consuming activations once `ker_size` of data is written to the sram.

### Publications

Published works that have utilized this tool have been presented at SysML 2019 and at the NeurIPS 2018 On-Device ML Workshop. The full paper can be found on arXiv at [FixyNN: Efficient Hardware for Mobile Computer Vision via Transfer Learning](https://arxiv.org/abs/1902.11128).

##### Citing DeepFreeze

If you find this DeepFreeze useful for your research, please use the following bibtex to cite us,

```
@article{fixynn,
  title={FixyNN: Efficient Hardware for Mobile Computer Vision via Transfer Learning},
  author={Whatmough, Paul and Zhou, Chuteng and Hansen, Patrick and Venkataramanaiah, Shreyas Kolala and Seo, Jae-Sun and Mattina, Matthew},
  journal={SysML},
  year={2019}
}
```
 
##### Authors

Patrick Hansen, Arm ML Research Lab, Boston, MA

Shreyas Kolala Venkataramanaiah, Arizona State University

[Paul Whatmough](https://www.linkedin.com/in/paul-whatmough-2062729/), Arm Research, Boston, MA

### License

This project is licensed under the MIT License - see the LICENSE file for details.
