#!/bin/bash

# I am using te Clang Compiler here
# Should work with tcc and clang 

# To make the object files
echo "> Making the object files"
# The compiled files : compiler -c nameoffile -Wall
# clang -c chunk.c -Wall
# clang -c compiler.c -Wall
# clang -c debug.c -Wall
# clang -c memory.c -Wall
# clang -c object.c -Wall
# clang -c scanner.c -Wall
# clang -c table.c -Wall
# clang -c value.c -Wall
# clang -c vm.c -Wall

clang -c chunk.c -Wall -o ./build/chunk.o
clang -c compiler.c -Wall -o ./build/compiler.o
clang -c debug.c -Wall -o ./build/debug.o
clang -c memory.c -Wall -o ./build/memory.o
clang -c object.c -Wall -o ./build/object.o
clang -c scanner.c -Wall -o ./build/scanner.o
clang -c table.c -Wall -o ./build/table.o
clang -c value.c -Wall -o ./build/value.o
clang -c vm.c -Wall -o ./build/vm.o
echo "> Finished making the object files"

# To make the executable
echo "> Making the executable"
# The main file compiled like : compiler -o executablename name objectfiles -Wall
clang -g -o ./build/clox.exe main.c ./build/chunk.o ./build/compiler.o ./build/debug.o ./build/memory.o ./build/object.o ./build/table.o ./build/scanner.o ./build/value.o ./build/vm.o -Wall
echo "> Finished making the exectable"

# delete the object files
# echo "> Deleting the object files"
# rm the clang generated files when clang is used
# if not comment the following files out
# rm ./build/clox.ilk
# rm ./build/clox.pdb
# rm the made object files ( and more if you are using clang for example )
# rm ./build/chunk.o
# rm ./build/compiler.o
# rm ./build/debug.o
# rm ./build/memory.o
# rm ./build/object.o
# rm ./build/scanner.o
# rm ./build/table.o
# rm ./build/value.o
# rm ./build/vm.o
# echo "> Finished deleting the objective files"
