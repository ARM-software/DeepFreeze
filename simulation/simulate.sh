RTL_DIRECTORY="${PWD}/../examples/lenet/rtl"
SRC="${PWD}/src.f"

module purge
source ~/tools.sh

ls ${RTL_DIRECTORY}/*.sv > ${SRC}

make clean
make compile
make run
make DVE