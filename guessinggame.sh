#!/bin/bash
	
function prompt {
echo "Guess how many files are in the current directory: "
read guess
files=$(ls -1 | wc -l)
}
	
prompt
	
while [[ $guess -ne $files ]]
do
if [[ $guess -lt $files ]] 
then
echo "Too low."
else
echo "Too high."
fi
prompt
done

echo "Your guess $guess is correct, good job!."
