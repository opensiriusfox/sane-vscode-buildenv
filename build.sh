#!/bin/bash

mkdir -p build

if [[ ! -e build/res ]]; then
    ln -s ../res build/res
fi

g++ -g -fdiagnostics-color=always \
    -Isrc \
    src/*.cpp \
    mybox.cpp \
    -o build/main

