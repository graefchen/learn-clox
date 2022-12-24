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
	echo -e "Running the $YELLOW$1$RESET test..."
	echo "--------------------------------------------------------------------------------"
	./build/clox.exe ./tests/$1
	RETURN_VALUE=$?
	echo "--------------------------------------------------------------------------------"
}

# the check function with 1 input
# input $1 is the name of the test and the file
check() {
	testing $1 > /dev/null
	THIS_VALUE=0
	if [ $RETURN_VALUE  != $THIS_VALUE ]; then
		echo -e "Test $YELLOW$1$RESET was executed ${RED}unsuccesfull${RESET}."
		testing $1
	fi
	if [ $RETURN_VALUE  == $THIS_VALUE ]; then
		echo -e "Test $YELLOW$1$RESET was executed ${GREEN}successfull${RESET}."
	fi
}

# getting the files in tests and put them into an array
TESTS=($(ls tests))

# echo "Trying to find tests..."
# echo -e "Following test were found: $YELLOW${TESTS[@]}$RESET"

echo "Start running the tests..."

for i in "${TESTS[@]}"
do
	check $i
done

echo "Finished running the tests"