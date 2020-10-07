export DEPENDENCIES_DIR=/mnt/DATA/SDK/

mkdir -p ${DEPENDENCIES_DIR}

./build_openblas.sh
./build_armadillo.sh
./build_opencv.sh
