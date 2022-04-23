#!/bin/bash

# I am using the Tiny C Compiler here
# As tcc | could also use Clang 

# To make the object files
echo "> Making the object files"
# The compiled files : compiler -c nameoffile -Wall
tcc -c chunk.c -Wall
tcc -c compiler.c -Wall
tcc -c debug.c -Wall
tcc -c memory.c -Wall
tcc -c scanner.c -Wall
tcc -c value.c -Wall
tcc -c vm.c -Wall
echo "> Finished making the object files"

# To make the executable
echo "> Making the executable"
# The main file compiled like : compiler -o executablename name objectfiles -Wall
tcc -g -o clox.exe main.c chunk.o compiler.o debug.o memory.o scanner.o value.o vm.o -Wall
echo "> Finished making the exectable"

# delete the object files
echo "> Deleting the object files"
# rm and the 
rm chunk.o
rm compiler.o
rm debug.o
rm memory.o
rm scanner.o
rm value.o
rm vm.o
echo "> Finished deleting the objective files"

