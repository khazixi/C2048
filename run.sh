#!/bin/bash

mkdir bin
mkdir lib
mkdir build
mkdir include

cmake -S . -B build
cd build
make
cd ..

./bin/C2048
