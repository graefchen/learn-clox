#!/bin/bash

# I am using te Clang Compiler here
# Should work with tcc and clang 

# To make the object files
echo "> Making the object files"
# The compiled files : compiler -c nameoffile -Wall
clang -c chunk.c -Wall
clang -c compiler.c -Wall
clang -c debug.c -Wall
clang -c memory.c -Wall
clang -c object.c -Wall
clang -c scanner.c -Wall
clang -c table.c -Wall
clang -c value.c -Wall
clang -c vm.c -Wall
echo "> Finished making the object files"

# To make the executable
echo "> Making the executable"
# The main file compiled like : compiler -o executablename name objectfiles -Wall
clang -g -o clox.exe main.c chunk.o compiler.o debug.o memory.o object.o table.o scanner.o value.o vm.o -Wall
echo "> Finished making the exectable"

# delete the object files
echo "> Deleting the object files"
# rm the clang generated files when clang is used
# if not comment the following files out
rm clox.ilk
rm clox.pdb
# rm the made object files ( and more if you are using clang for example )
rm chunk.o
rm compiler.o
rm debug.o
rm memory.o
rm object.o
rm scanner.o
rm table.o
rm value.o
rm vm.o
echo "> Finished deleting the objective files"
