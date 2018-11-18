#!/bin/bash
if [ $# -eq 0 ]
then 
echo "No inputs send via command line!! Exiting" >&2; exit 1;
fi
path=$1
path1="/home/ubuntu/Desktop/Automation-using-Shell-Scripts/ScenariosFullChapter2/"
if [ -d $path ]
then
rm -r $path
echo `date +%F` >> $path1/del.log
echo "$whoami" >> $path1/del.log
echo "$path" >> $path1/del.log
fi
if [ -f $path ]
then
rm $path
echo `date +%F` >> $path1/del.log
echo "$USERs" >> $path1/del.log
echo "$path" >> $path1/del.log
fi
