#!/bin/bash

mkdir bin
mkdir lib
mkdir build
mkdir include

cd submoules
git clone https://github.com/glfw/glfw
git clone https://github.com/datenwolf/linmath.h
cd ..

cmake -S . -B build
cd build
make
cd ..

./bin/C2048
