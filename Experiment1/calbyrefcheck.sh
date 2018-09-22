#!/bin/bash
function mul100
{
var=$(($1*100))
echo "Inside function value of integer is (after function operation): " $var>$1 
}
read -p "Enter an integer: " var
mul100 $var
echo "Value of integer after function call is: " $var
