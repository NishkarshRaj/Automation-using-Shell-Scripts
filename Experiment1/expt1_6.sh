#!/bin/bash
read -p "Enter a number: " num1
read -p "Enter another number: " num2

if [ $num1 == $num2 ]
then
echo "Numbers are equal"
else
echo "Numbers are not equal"
fi
