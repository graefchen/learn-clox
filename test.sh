#!/bin/bash

# the testing function with 2 inputs 
# input $1 is the anem of the test and the file
testing() {
	echo "--------------------------------------------------------------------------------"
	echo "Runnign the $1 test..."
	echo "--------------------------------------------------------------------------------"
	./build/clox.exe ./clox/$1.clox
	echo "--------------------------------------------------------------------------------"
}

check() {
	GREEN='\033[0;32m'
	RED='\033[0;31m '
	RESET='\033[0m'
	testing $1 > /dev/null
	if [ $? == 0 ]; then
		echo -e "Test $1 was ${GREEN}successfull${RESET}."
	else
		echo -e "Test $1 was ${RED}unsuccesfull${RESET}."
		testing $1
	fi
}

INPUT=$1
echo "Start running the tests..."
if [ "$INPUT" == "full" ]; then 
	testing "local_variables"
	testing "if"
	testing "while"
	testing "for"
else
	check "local_variables"
	check "if"
	check "while"
	check "for"
fi
echo "Finished runnign the tests"
