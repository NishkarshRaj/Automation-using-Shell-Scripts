#!/bin/bash
path="$1"
a="$#"
lastarg="${!a}"
read -p "Search element: " ser
read -p "Replace element: " rep
if [ -d "$lastarg" ]
then
add=*.txt
else
if [ -f "$lastarg" ]
then
add="$lastarg"
else
echo "Invalid path"
fi
fi
sed -i -e -w 's/'"$ser"'/'"$rep"'/g' $add

