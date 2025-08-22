#!/bin/bash

set -e

echo "Compiling Java..."
javac -d . java/SEALWrapper.java

echo "Generating JNI header..."
javac -h native java/SEALWrapper.java

echo "Building native library..."
cd native
cmake -B build -S .
cmake --build build

echo "Done!"
