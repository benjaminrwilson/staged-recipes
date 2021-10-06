#!/bin/env/bash

export LIBTOOL=${BUILD_PREFIX}/bin/libtool
export LIBTOOLIZE=${BUILD_PREFIX}/bin/libtoolize

mkdir build
cd build
cmake ${CMAKE_ARGS} -DUSE_BUNDLED=OFF -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$PREFIX ..
ninja
