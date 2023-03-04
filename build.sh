#!/bin/bash

# I am using the Clang Compiler here
# Should work with tcc and clang 

cFilenames=$(find . -type f -name "*.c")
compilerFlags="-g " # -Wall

# To make the executable
echo "> Making the executable"
clang $cFilenames $compilerFlags -o ./build/clox.exe
echo "> Finished making the exectable"