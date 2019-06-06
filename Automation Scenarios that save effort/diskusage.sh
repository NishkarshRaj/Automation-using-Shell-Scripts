#!/bin/bash
LIMIT='80'
dir_name='/var'
mailto="500060720@stu.upes.ac.in"
subject="Disk Usage of $dir_name in Ubuntu"
MAILX="mailx"
which $MAILX > /dev/null 2>&1
if [ $? -eq 0 ]
then
	echo "Install mailx"
	exit 1
fi
cd $dir_name
used=`df . | awk '{print $5}' | sed -ne 2p | cut -d"%" -f1`
if [ $used -gt $LIMIT ]
then	
	du -sh ${dir_name}/* | $MAILX -s "$subject" "$mailto"
fi
