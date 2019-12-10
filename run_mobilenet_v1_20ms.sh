MODEL_NAME="mobilenet_v1_20ms"
PB_FILEPATH="${PWD}/examples/$MODEL_NAME/mobilenet_v1_20ms.pb"
ENDPOINTS_FILEPATH="${PWD}/examples/$MODEL_NAME/endpoints.json"
DATA_FORMAT_FILEPATH="${PWD}/examples/$MODEL_NAME/data_format.json"

python model_ppa.py \
    --model_name=$MODEL_NAME \
    --pb_filepath=$PB_FILEPATH \
    --endpoints_filepath=$ENDPOINTS_FILEPATH \
    --data_format_filepath=$DATA_FORMAT_FILEPATH \
    --verbose