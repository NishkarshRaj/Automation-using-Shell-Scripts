#!/bin/bash

#tar = Tape Archive tool for compression
tar -cvf /backupfolder/backup.tar /home/nishkarshraj/Desktop/Automation-using-Shell-Scripts

#Go to the backup folder location
cd /backupfolder

#Show the size of the folder
du -sh

