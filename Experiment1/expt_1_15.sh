#!/bin/bash
function greet
{
local -n ref "$1"
echo "Hello $1"
}
read -p "Enter a string: " var
#echo "Call by Value"
#greet $var
echo "Call by reference"
greet $var

