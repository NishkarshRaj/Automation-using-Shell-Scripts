#!/bin/bash
read -p "Enter a variable: " val1
read -p "Enter another variale: " val2
read -p "Enter another variable: " val3
arrayname=($val1 $val2 $val3)

max=0
for el in ${arrayname[@]}
do
if [ $el -gt $max ]
then
max=$el
fi
done

for el in ${arrayname[@]};
do
case $el in 
$max) echo "$el is max" ;;
esac
done


