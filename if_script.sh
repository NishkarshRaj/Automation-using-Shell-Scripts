#!/bin/bash
read -p "Enter your name: " name
if [ $name = "Nishkarsh" ]
then
	echo "Access given"
else
	echo "Access denied"
fi

#BCD... if command condition is written inside [] where space must be given from both sides in the condition
#BCD... == is for string comparision, -eq is for integer comparision
#BCD... No space must be given between a variable and its value and equal sign during variable declaration but not during condition
#BCD... Match is case sensitive
