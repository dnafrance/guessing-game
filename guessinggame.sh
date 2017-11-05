#!/bin/bash
# File: guessinggame.sh

function check_numeric () {
	repattern='^[0-9]+$'
	if ! [[ $1 =~ $repattern ]]
	then
		echo 1
		return 1
	fi
}

function game () {
	guessok=1
	numfiles=$(ls | wc -l)
	while [[ $guessok -ne 0 ]]
	do
		echo Enter your guess of how many files are there in the current directory:
		read response
		numeric_guess=$( check_numeric $response )
		if [[ $numeric_guess -eq 0 ]]
		then
			if [[ $response -eq $numfiles ]]
			then
				guessok=0
				echo Congrats. Your guess is correct. Exiting program.
			elif [[ $response -lt $numfiles ]]
			then
				echo Too low. Try again.
			elif [[ $response -gt $numfiles ]]
			then
				echo Too high. Try again.
			fi
		else
			echo Invalid non-numeric negative or non-integer guess. Try again.
		fi
	done
}

game
