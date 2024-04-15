#!/bin/bash

PROJECT_NAME=$(grep -m1 "project(" CMakeLists.txt | sed 's/project(//' | sed 's/)//' | cut -d ' ' -f 1)
EXECUTABLE=$(grep -m1 "add_executable(" CMakeLists.txt | sed 's/add_executable(//' | cut -d ' ' -f 1)

echo "================================"
echo "Building project $PROJECT_NAME ..."

rm -rf build
mkdir build
cd build
echo "================================"
cmake --version
echo "================================"
cmake ..
make

if [[ $EXECUTABLE == "\${PROJECT_NAME}" ]]; then
  ./$PROJECT_NAME
else
  ./$EXECUTABLE
fi
