#!/bin/bash
read -p "Enter a string with spaces: " names
for name in $names
do 
echo "Hello $name"
done
read -p "Enter a number: " num1
read -p "Enter another number: " num2
for number in `seq $num1 $num2`
do 
echo "I am $number"
done
