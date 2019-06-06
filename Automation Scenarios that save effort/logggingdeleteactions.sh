#!/bin/bash
path=$1
if [ -d $path ]
then
	rm -r $path
	echo `date +%X` >> del.log
	echo ${whoami} >> del.log
	echo ${path} >> del.log
fi
if [ -f $path ]
then 
	rm -r $path
	echo `date +%X` >> del.log
	echo "$USER" >> del.log
	echo $path >> del.log
fi
