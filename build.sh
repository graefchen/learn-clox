#!/bin/bash

# I am using the Tiny C Compiler here
# As tcc | could also use Clang 

# To make the object files
echo "> Making the object files"
# The compiled files : compiler -c nameoffile -Wall
tcc -c chunk.c -Wall
tcc -c debug.c -Wall
tcc -c memory.c -Wall
tcc -c value.c -Wall
echo "> Finished making the object files"

# To make the executable
echo "> Making the executable"
# The main file compiled like : compiler -o executablename name objectfiles -Wall
tcc -o clox.exe main.c chunk.o debug.o memory.o value.o -Wall
echo "> Finished making the exectable"

# delete the object files
echo "> Deleting the object files"
# rm and the 
rm chunk.o
rm debug.o
rm memory.o
rm value.o
echo "> Finished deleting the objective files"

