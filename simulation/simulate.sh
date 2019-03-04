RTL_DIRECTORY="${PWD}/../examples/lenet/rtl"
SRC_FILEPATH="${PWD}/src.f"

module purge
source ~/tools.sh

ls ${RTL_DIRECTORY}/*.sv > ${SRC_FILEPATH}

make clean
make compile
make run
make DVE