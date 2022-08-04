#!/bin/bash

# the colours the console can change into

# green
GREEN='\033[0;32m'
# red
RED='\033[0;31m'
# yellow
YELLOW='\033[0;33m'
# reset colour
RESET='\033[0m'

# the testing function with 1 input
# input $1 is the name of the test and the file
testing() {
	echo "--------------------------------------------------------------------------------"
	echo -e "Running the $YELLOW$1 $RESET test..."
	echo "--------------------------------------------------------------------------------"
	./build/clox.exe ./clox/$1.clox
	RETURN_VALUE=$?
	echo "--------------------------------------------------------------------------------"
}

# the check function with 1 input
# input $1 is the name of the test and the file
check() {
	testing $1 > /dev/null
	THIS_VALUE=0
	if [ $RETURN_VALUE  != $THIS_VALUE ]; then
		echo -e "Test $YELLOW$1 $RESET was ${RED}unsuccesfull${RESET}."
		testing $1
	fi
	if [ $RETURN_VALUE  == $THIS_VALUE ]; then
		echo -e "Test $YELLOW$1 $RESET was ${GREEN}successfull${RESET}."
	fi
}

# the input for the file at position 1
INPUT=$1

TESTS=(
	"local_variables" "if" "while" "for" "fun0" "fun1" "fun2" "fun3" "fun4" "closure1" "closure2" "closure3" "closure4" "closure5" "closure6" "closure7" "closure8" "closure9" "closure10" "closure11" "closure12" "closure13"
	)

echo "Start running the tests..."

if [ "$INPUT" == "full" ]; then 
	for i in "${TESTS[@]}"
	do
		testing $i
	done
else
	for i in "${TESTS[@]}"
	do
		check $i
	done
fi

echo "Finished running the tests"
