#!/bin/sh
mkdir build && cd build

cmake -G "Ninja"                            \
    -DCMAKE_INSTALL_PREFIX=${PREFIX}        \
    -DCMAKE_PREFIX_PATH=${PREFIX}           \
    -DCMAKE_BUILD_TYPE=Release              \
    ..

ninja

# install
cd ..
mkdir -p $PREFIX/include/mapmap
cp mapmap/*.h $PREFIX/include/mapmap
cp -rf mapmap/header $PREFIX/include/mapmap
cp build/mapmap_demo $PREFIX/bin
cp build/mapmap_test $PREFIX/bin
