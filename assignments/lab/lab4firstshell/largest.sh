#!/bin/sh
echo "Please type in parameters"
read -a A
if [ ${#A[@]} -ne 3 ]
then 
	echo "Incorrect number of parameters!"
else

	if [ ${A[0]} -le ${A[1]} ]
	then A[0]=${A[1]}
	fi
	if [ ${A[0]} -le ${A[2]} ]
	then A[0]=${A[2]}
	fi
	echo "The largest number is ${A[0]}."
fi
