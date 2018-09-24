#!/bin/bash

read -p "Enter a number: " num
declare -a barr
i=0
while [ $num -gt 0 ]
do
barr[i]=$(($num%2))
num=$(($num/2))
i=$[$i+1]
done
echo "${barr[@]}"
