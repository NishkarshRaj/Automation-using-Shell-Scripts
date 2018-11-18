#!/bin/bash
read -p "Command to check which users have used: " var
if [ $whoami == "root" ]
then 
echo " "
else
echo "Run as root!!"
exit 1
fi
grep -n $var /home/*/.bash_history >> /home/ubuntu/Desktop/Automation-using-Shell-Scripts/file.txt
cat /home/ubuntu/Desktop/Automation-using-Shell-Scripts/file.txt
