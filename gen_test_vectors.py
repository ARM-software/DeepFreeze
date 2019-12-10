#!/usr/bin/env python

"""
Author: Patrick Hansen
Project: FixyNN


"""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import argparse
import cv2
import numpy as np
import os
import tensorflow

from graph import *

DEPTHWISE_SEPARABLE_CONV_2D = "ds_conv_2d"
DEPTHWISE_CONV_2D = "dw_conv_2d"
CONV_2D = "conv_2d"
DENSE = "dense"
MAX_POOL_2D = "max_pool_2d"
AVG_POOL_2D = "avg_pool_2d"
FLATTEN = "flatten"

def tuple_to_tf(strides):
	return tuple([1]+list(strides)+[1])

def mask_bits(matrix, nint, nfrac):
	nbits = nint + nfrac
	a_min = - (2 ** (nbits - 1)) / float(2 ** nfrac)
	a_max = (2 ** (nbits - 1) - 1) / float(2 ** nfrac)
	def f(x):
			return int(min(max(x, a_min), a_max) * (2 ** nfrac)) / (2. ** nfrac)
	vf = np.vectorize(f)
	return vf(matrix).astype(matrix.dtype)

def compute_activations(input_activations, layer, data_format):
	tf.reset_default_graph()
	with tf.get_default_graph().as_default():
			layer_input = tf.placeholder(tf.float32, layer.input_shapes[0])
	
			if layer.op_type == DENSE:
					net = tf.matmul(layer_input, tf.constant(mask_bits(layer.weights, data_format["w_nint"], data_format["w_nfrac"])))
			elif layer.op_type == CONV_2D:
					net = tf.nn.conv2d(
							input=layer_input,
							filter=tf.constant(mask_bits(layer.weights, data_format["w_nint"], data_format["w_nfrac"])),
							strides=tuple_to_tf(layer.strides),
							padding=layer.padding
					)
			elif layer.op_type == DEPTHWISE_CONV_2D:
					net = tf.nn.depthwise_conv2d(
							input=layer_input,
							filter=tf.constant(mask_bits(layer.weights, data_format["w_nint"], data_format["w_nfrac"])),
							strides=tuple_to_tf(layer.strides),
							padding=layer.padding
					)
			elif layer.op_type == DEPTHWISE_SEPARABLE_CONV_2D:
					net = tf.nn.separable_conv2d(
							input=layer_input,
							depthwise_filter=tf.constant(mask_bits(layer.weights[0], data_format["w_nint"], data_format["w_nfrac"])),
							pointwise_filter=tf.constant(mask_bits(layer.weights[1], data_format["w_nint"], data_format["w_nfrac"])),
							strides=tuple_to_tf(layer.strides),
							padding=layer.padding
					)
			elif layer.op_type == MAX_POOL_2D:
					net = tf.nn.max_pool(
							value=layer_input,
							ksize=tuple_to_tf(layer.kernel_size),
							strides=tuple_to_tf(layer.strides),
							padding=layer.padding
					)
			elif layer.op_type == AVG_POOL_2D:
					net = tf.nn.avg_pool(
							value=layer_input,
							ksize=tuple_to_tf(layer.strides),
							strides=tuple_to_tf(layer.strides),
							padding=layer.padding
					)
			elif layer.op_type == FLATTEN:
					net = tf.layers.flatten(layer_input)
			else:
					raise Exception("Layer type not supported: %s" % layer.op_type)
	
			if layer.op_type in LAYER_TYPES_TRAINABLE and layer.bias is not None:
					net = tf.nn.bias_add(net, tf.constant(mask_bits(layer.bias, data_format["b_nint"], data_format["b_nfrac"])))
	
			if layer.activation_function == 'RELU6':
					net = tf.nn.relu6(net)
					
			if layer.activation_function == 'RELU':
					net = tf.nn.relu(net)
	
			layer_output = net
	
			with tf.Session() as sess:
					output_activations = sess.run(
							fetches=layer_output,
							feed_dict={layer_input: input_activations}
					)
	return output_activations

def save_activations(activations, filepath, data_format):
	nint = data_format["a_nint"]
	nfrac = data_format["a_nfrac"]
	nbits = nint + nfrac
	k = 2 ** nfrac
	
	if len(activations.shape) == 4:
			nchannels = activations.shape[-1]
			activations = activations.reshape((-1, nchannels))
	
	with open(filepath, "w") as f:
			for vec in activations:
					for val in reversed(vec):
							f.write(bin(int(val * k)).split("b")[1].zfill(nbits))
					f.write("\n")
	
def load_activations(filepath, data_format, shape):
	nint = data_format["a_nint"]
	nfrac = data_format["a_nfrac"]
	nbits = nint + nfrac
	k = 2. ** nfrac
	
	activations = []
	lines = [line.rstrip('\n') for line in open(filepath)]
	for line in lines:
			line = [line[i:i+nbits] for i in range(0, len(line), nbits)]
			vec = []
			for val in reversed(line):
					vec.append(int(val, 2) / k)
			activations.append(vec)
	return np.array(activations).reshape(shape)
	
if __name__ == "__main__":
	parser = argparse.ArgumentParser()
	parser.add_argument("--model_name", type=str, required=True)
	parser.add_argument("--meta_filepath", type=str, default=None)
	parser.add_argument("--checkpoint_filepath", type=str, default=None)
	parser.add_argument("--pb_filepath", type=str, default=None)
	parser.add_argument("--endpoints_filepath", type=str, required=True)
	parser.add_argument("--data_format_filepath", type=str, required=True)
	parser.add_argument("--input_activation_filepath", type=str, required=True)
	parser.add_argument("--output_directory", type=str, required=True)
	FLAGS = parser.parse_args()
	
	graph = parse_tf_graph(FLAGS.model_name, FLAGS.endpoints_filepath,
				FLAGS.meta_filepath, FLAGS.checkpoint_filepath, FLAGS.pb_filepath)
	print(graph)
	
	with open(FLAGS.data_format_filepath, "r") as f:
			data_format = json.load(f)
	
	layer = graph.get_input_layer()
	input_shape = layer.input_shapes[0]
	
	if FLAGS.input_activation_filepath.lower().endswith((".png", ".jpg", ".jpeg")):
			activations = cv2.imread(FLAGS.input_activation_filepath, mode="RGB")[np.newaxis, :]
	elif FLAGS.input_activation_filepath.lower().endswith(".npy"):
			activations = np.load(FLAGS.input_activation_filepath)[np.newaxis, :]
	elif FLAGS.input_activation_filepath.lower().endswith(".txt"):
			activations = load_activations(FLAGS.input_activation_filepath, data_format, input_shape)
	else:
			raise Exception("Invalid input image file extension")
	activations = mask_bits(activations, data_format["a_nint"], data_format["a_nfrac"])
	act_filepath = os.path.join(FLAGS.output_directory, "input_act.vec")
	save_activations(activations, act_filepath, data_format)
	
	while layer:
		activations = compute_activations(activations, layer, data_format)
		activations = mask_bits(activations, data_format["a_nint"], data_format["a_nfrac"])
		act_filepath = os.path.join(FLAGS.output_directory, layer.name + "_act.vec")
		save_activations(activations, act_filepath, data_format)
		layer = graph.get_next_layer(layer)
