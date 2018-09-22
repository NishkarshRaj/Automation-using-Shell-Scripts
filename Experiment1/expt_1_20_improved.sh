#!/bin/bash
read -p "Enter the array size you want: " size 
i=0
declare -a arrayname
while [ $i -lt $size ]
do
read -p "Enter the $(($i+1)) element of array: " arrayname[i]
i=$[$i+1]
done

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


