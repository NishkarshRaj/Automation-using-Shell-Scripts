#!/bin/bash
read -p "Enter a number a: " a
read -p "Enter a number b: " b
read -p "Enter 1 to start with addition: " inp
if [ $inp -eq 1 ]
then
case $inp 
in
1)
add=$(($a+$b)) 
echo "Addition of input numbers is: ${add}"
;&
2) 
sub=$(($add-$b))
echo "Subtraction of Add and B is: ${sub}"
;&
3)
mul=$(($sub*$b)) 
echo "Multiplication of sub and B is: ${mul}"
;&
4) 
div=bc <<< "scale = 10; ($mul/$b))"
echo "Division of mul and b is: ${div}"
;&
5) 
mod=$(($div-($div/$b)*$b))
echo "Mod of div and b is: ${mod}"
;&
*) 
echo "Wrong choice entered";;
esac
else
echo "Wrong Choice"
fi
