#!/bin/bash

PROJECT_NAME=$(grep -m1 "project(" CMakeLists.txt | sed 's/project(//; s/)//')
echo "Building $PROJECT_NAME ..."

rm -rf build
mkdir build
cd build
cmake ..
make

./$PROJECT_NAME