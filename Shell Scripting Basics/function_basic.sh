#!/bin/bash

#First program for function in shell scripting
function multiply10
{
n=$(($1*10))
#echo $n
return $n 
}
read -p "Enter a number whom you want to multiply by 10: " num
num1=`multiply10 $num`
echo "Number multiplied by 10 is: $num1"
