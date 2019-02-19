MODEL_NAME="lenet"
META_FILEPATH="${PWD}/examples/lenet/lenet.ckpt.meta"
CHECKPOINT_FILEPATH="${PWD}/examples/lenet/lenet.ckpt"
ENDPOINTS_FILEPATH="${PWD}/examples/lenet/endpoints.json"
DATA_FORMAT_FILEPATH="${PWD}/examples/lenet/data_format.json"
OUTPUT_DIRECTORY="${PWD}/examples/lenet/rtl"

mkdir -p $OUTPUT_DIRECTORY

python gen_verilog.py \
  --model_name=$MODEL_NAME \
  --meta_filepath=$META_FILEPATH \
  --checkpoint_filepath=$CHECKPOINT_FILEPATH \
  --endpoints_filepath=$ENDPOINTS_FILEPATH \
  --data_format_filepath=$DATA_FORMAT_FILEPATH \
  --output_directory=$OUTPUT_DIRECTORY

python model_ppa.py \
  --model_name=$MODEL_NAME \
  --meta_filepath=$META_FILEPATH \
  --checkpoint_filepath=$CHECKPOINT_FILEPATH \
  --endpoints_filepath=$ENDPOINTS_FILEPATH \
  --data_format_filepath=$DATA_FORMAT_FILEPATH \
  --verbose