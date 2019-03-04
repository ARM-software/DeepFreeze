MODEL_NAME="lenet"
INPUT_LAYER_NAME="conv1"
OUTPUT_LAYER_NAME="conv1"

META_FILEPATH="${PWD}/examples/lenet/lenet.ckpt.meta"
CHECKPOINT_FILEPATH="${PWD}/examples/lenet/lenet.ckpt"
ENDPOINTS_FILEPATH="${PWD}/examples/lenet/endpoints.json"
DATA_FORMAT_FILEPATH="${PWD}/examples/lenet/data_format.json"

RTL_DIRECTORY="${PWD}/examples/lenet/rtl"
TEST_VEC_DIRECTORY="${PWD}/examples/lenet/test_vectors"

INPUT_ACTIVATION_FILEPATH="${PWD}/examples/mnist_data/mnist_0.npy"

INPUT_VEC_FILEPATH="${TEST_VEC_DIRECTORY}/input_act.vec"
OUTPUT_VEC_FILEPATH="${TEST_VEC_DIRECTORY}/output_act.vec"

mkdir -p $OUTPUT_DIRECTORY $TEST_VEC_DIRECTORY

python gen_verilog.py \
    --model_name=$MODEL_NAME \
    --meta_filepath=$META_FILEPATH \
    --checkpoint_filepath=$CHECKPOINT_FILEPATH \
    --endpoints_filepath=$ENDPOINTS_FILEPATH \
    --data_format_filepath=$DATA_FORMAT_FILEPATH \
    --input_layer_name=$INPUT_LAYER_NAME \
    --output_layer_name=$OUTPUT_LAYER_NAME \
    --output_directory=$RTL_DIRECTORY \
    --input_vec_filepath=$INPUT_VEC_FILEPATH \
    --output_vec_filepath=$OUTPUT_VEC_FILEPATH

# python gen_test_vectors.py \
#     --model_name=$MODEL_NAME \
#     --meta_filepath=$META_FILEPATH \
#     --checkpoint_filepath=$CHECKPOINT_FILEPATH \
#     --endpoints_filepath=$ENDPOINTS_FILEPATH \
#     --data_format_filepath=$DATA_FORMAT_FILEPATH \
#     --input_activation_filepath=$INPUT_ACTIVATION_FILEPATH \
#     --output_directory=$TEST_VEC_DIRECTORY

# python model_ppa.py \
#     --model_name=$MODEL_NAME \
#     --meta_filepath=$META_FILEPATH \
#     --checkpoint_filepath=$CHECKPOINT_FILEPATH \
#     --endpoints_filepath=$ENDPOINTS_FILEPATH \
#     --data_format_filepath=$DATA_FORMAT_FILEPATH \
#     --verbose
