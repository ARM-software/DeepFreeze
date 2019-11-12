MODEL_NAME="mobilenet_trained"
INPUT_LAYER_NAME="conv0"
OUTPUT_LAYER_NAME="conv2_dw"

META_FILEPATH="${PWD}/examples/$MODEL_NAME/model_folded.ckpt.meta"
CHECKPOINT_FILEPATH="${PWD}/examples/$MODEL_NAME/model_folded.ckpt"
ENDPOINTS_FILEPATH="${PWD}/examples/$MODEL_NAME/endpoints.json"
DATA_FORMAT_FILEPATH="${PWD}/examples/$MODEL_NAME/data_format.json"
ROM_INIT_FILES_DIRECTORY="${PWD}/examples/$MODEL_NAME/ROM_init_files"

RTL_DIRECTORY="${PWD}/examples/$MODEL_NAME/rtl"
TEST_VEC_DIRECTORY="${PWD}/examples/$MODEL_NAME/test_vectors"

# need to change this to imagenet
INPUT_ACTIVATION_FILEPATH="${PWD}/examples/mnist_data/mnist_0.npy"

INPUT_VEC_FILEPATH="${TEST_VEC_DIRECTORY}/input_act.vec"
OUTPUT_VEC_FILEPATH="${TEST_VEC_DIRECTORY}/output_act.vec"

mkdir -p ROM_INIT_FILES_DIRECTORY

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
--rom_init_filepath=$ROM_INIT_FILES_DIRECTORY \
--output_vec_filepath=$OUTPUT_VEC_FILEPATH

python gen_test_vectors.py \
    --model_name=$MODEL_NAME \
    --meta_filepath=$META_FILEPATH \
    --checkpoint_filepath=$CHECKPOINT_FILEPATH \
    --endpoints_filepath=$ENDPOINTS_FILEPATH \
    --data_format_filepath=$DATA_FORMAT_FILEPATH \
    --input_activation_filepath=$INPUT_ACTIVATION_FILEPATH \
    --output_directory=$TEST_VEC_DIRECTORY

python model_ppa.py \
    --model_name=$MODEL_NAME \
    --meta_filepath=$META_FILEPATH \
    --checkpoint_filepath=$CHECKPOINT_FILEPATH \
    --endpoints_filepath=$ENDPOINTS_FILEPATH \
    --data_format_filepath=$DATA_FORMAT_FILEPATH \
    --verbose