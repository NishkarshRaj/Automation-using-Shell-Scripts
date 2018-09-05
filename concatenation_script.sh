#!/bin/bash

echo "Hello to the Concatenation code!!!"

#Take first input from user via stdin
read -p "Enter the first string: " str1

#Take second input from user via stdin
read -p "Enter the second string: " str2

#Concatenate the string
str="$str1$str2"

#print the value of str
echo "The concatenated string is: ${str}"
