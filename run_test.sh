MODEL_NAME="mobilenet"
INPUT_LAYER_NAME="conv0"
OUTPUT_LAYER_NAME="logits"

META_FILEPATH="/home/pathan01/DeepFreeze/examples/Channel_pruned_ckpt/model.ckpt.meta"
CHECKPOINT_FILEPATH="/home/pathan01/DeepFreeze/examples/Channel_pruned_ckpt/model.ckpt"
ENDPOINTS_FILEPATH="/home/pathan01/DeepFreeze/examples/Channel_pruned_ckpt/endpoints.json"
DATA_FORMAT_FILEPATH="/home/pathan01/DeepFreeze/examples/Channel_pruned_ckpt/data_format.json"

RTL_DIRECTORY="/home/pathan01/DeepFreeze/examples/Channel_pruned_ckpt/rtl"
#TEST_VEC_DIRECTORY="${PWD}/examples/test_small/test_vectors"

#INPUT_ACTIVATION_FILEPATH="${PWD}/examples/mnist_data/mnist_0.npy"

#INPUT_VEC_FILEPATH="${TEST_VEC_DIRECTORY}/input_act.vec"
#OUTPUT_VEC_FILEPATH="${TEST_VEC_DIRECTORY}/output_act.vec"

mkdir -p $RTL_DIRECTORY #$TEST_VEC_DIRECTORY

python gen_verilog.py \
    --model_name=$MODEL_NAME \
    --meta_filepath=$META_FILEPATH \
    --checkpoint_filepath=$CHECKPOINT_FILEPATH \
    --endpoints_filepath=$ENDPOINTS_FILEPATH \
    --data_format_filepath=$DATA_FORMAT_FILEPATH \
    --input_layer_name=$INPUT_LAYER_NAME \
    --output_layer_name=$OUTPUT_LAYER_NAME \
    --output_directory=$RTL_DIRECTORY \
    #--input_vec_filepath=$INPUT_VEC_FILEPATH \
    #--output_vec_filepath=$OUTPUT_VEC_FILEPATH

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
