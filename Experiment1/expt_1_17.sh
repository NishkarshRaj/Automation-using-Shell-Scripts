#!/bin/bash
read -p "Enter a number: " number1
read -p "Enter another number: " number2
if [ $number1 -gt $number2 ]
then 
echo "$Number1 is greater than $number2"
elif [ $number1 -lt $number2 ]
then
echo "$number1 is less than $number2"
else
echo "$number1 is equal to $number2"
fi 

#elif not else if elsif elseif
