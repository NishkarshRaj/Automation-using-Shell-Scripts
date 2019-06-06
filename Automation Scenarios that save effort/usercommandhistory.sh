#!/bin/bash
read var
if [ $(whoami) == "root" ]
then 
	echo " "
else
	echo "Run as root"
	exit
fi
grep -n $var /home/*/.bash_history >> file.txt
cat file.txt
