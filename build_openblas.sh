export DEPENDENCIES_DIR=/mnt/DATA/SDK/
cd ${DEPENDENCIES_DIR}

# build openblas with single-thread
wget https://sourceforge.net/projects/openblas/files/v0.3.5/OpenBLAS%200.3.5%20version.zip
unzip OpenBLAS\ 0.3.5\ version.zip
cd ${DEPENDENCIES_DIR}/xianyi-OpenBLAS-eebc189/
make USE_THREAD=0
sudo make PREFIX=/opt/OpenBLAS install
