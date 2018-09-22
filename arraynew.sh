#!/bin/bash
declare -a arrayname
arrayname=(10 5 8 4 7)
#sorting
for i in `seq 0 4`
	do
	for j in `seq 0 $(($j-$i-1))`
	do
	k=$(($j+1))
	if [ ${arrayname[j]} -lt ${arrayname[k]} ]
		then
			temp=${arrayname[j]}
			arrayname[j]=${arrayname[$((j+1))]}
			arrayname[$((j+1))]=${arrayname[j]}
	fi
	done
done



p=${arrayname[0]}
q=${arrayname[1]}
read -p "Enter 1 to start with addition: " inp
if [ $inp -eq 1 ]
then
case $inp 
in
1)
add=$(($p+$q)) 
echo "Addition of input numbers is: ${add}"
;&
2) 
sub=$(($add-$q))
echo "Subtraction of Add and B is: ${sub}"
;&
3)
mul=$(($sub*$q)) 
echo "Multiplication of sub and B is: ${mul}"
;&
4) 
div=bc <<< "scale = 10; ($mul/$q))"
echo "Division of mul and b is: ${div}"
;&
5) 
mod=$(($div-($div/$q)*$q))
echo "Mod of div and b is: ${mod}"
;&
*) 
echo "Wrong choice entered";;
esac
else
echo "Wrong Choice"
fi

echo "Max value of array is: ${arrayname[4]}"
sum=0
for el in ${arrayname[@]}
do 
sum=$(($sum+$el))
done
five=5
avg=bc <<< "scale =10; ($sum/$five)"
echo "Average is :${avg}"
