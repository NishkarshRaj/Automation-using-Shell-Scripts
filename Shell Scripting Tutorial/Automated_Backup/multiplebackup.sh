#!/bin/bash

#Specify folders whose backup is to be taken in variables
f1="/home/nishkarshraj/Desktop/Automation-using-Shell-Scripts"
f2="/home/nishkarshraj/Desktop/Computer-Graphics"
f3="/home/nishkarshraj/Desktop/HelloWorld"

#tar = Tape Archive tool for compression
#Creating same backup tar file for all specified folders
tar -cvf /backupfolder/backup.tar $f1 $f2 $f3

#Go to the backup folder location
cd /backupfolder

#Show the size of the folder
du -sh

