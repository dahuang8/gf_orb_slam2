export DEPENDENCIES_DIR=/mnt/DATA/SDK/
cd ${DEPENDENCIES_DIR}
wget https://sourceforge.net/projects/arma/files/armadillo-9.200.7.tar.xz
tar xf armadillo-9.200.7.tar.xz
cd ${DEPENDENCIES_DIR}/armadillo-9.200.7/
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX:PATH="/opt/armadillo" -DCMAKE_INSTALL_LIBDIR:PATH="lib" -DCMAKE_BUILD_TYPE:STRING="Release" -Dopenblas_LIBRARY:FILEPATH="/opt/OpenBLAS/lib/libopenblas.so" -Dopenblasp_LIBRARY:FILEPATH="/opt/OpenBLAS/lib/libopenblas.so" -Dopenblaso_LIBRARY:FILEPATH="/opt/OpenBLAS/lib/libopenblas.so" -DLAPACK_LIBRARY:FILEPATH="/opt/OpenBLAS/lib/libopenblas.so"
make -j4
sudo make install
