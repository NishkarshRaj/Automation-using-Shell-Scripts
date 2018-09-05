#!/bin/bash
read -p "Enter your marks: " marks
case $marks 
in
9[0-9]|100)
echo "Your grade is: O"
;;
8[0-9])
echo "Your grade is: A+"
;;
7[0-9])
echo "Your grade is: A"
;;
6[0-9])
echo "Your grade is: B"
;;
5[0-9])
echo "Your grade is: C"
;;
4[0-9])
echo "Your grade is: D"
;;
*)
echo "Your grade is: F"
;;
esac
