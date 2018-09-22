#!/bin/bash
function swap
{
eval "$1=${!2} $2=${!1}" # swap two variables without third variable in shell
}
read -p "Enter a number: " num1
read -p "Enter another number: " num2
echo "Before Swapping: "
echo "Number 1 and number 2 are $num1 and $num2 respectively"
swap num1 num2
echo "After swapping: "
echo "Number 1 and number 2 are $num1 and $num2 respectively"

#Call by reference always in Shell
