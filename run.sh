#!/bin/bash

mkdir bin
mkdir lib
mkdir build
mkdir include
mkdir submodules

git clone https://github.com/glfw/glfw submodules
git clone https://github.com/datenwolf/linmath.h submodules
cd ..

cmake -S . -B build
cd build
make
cd ..

bin/C2048
