#!/bin/bash

# Compress the folder with foldername + date and take backup
filename="backup_`date +%d`_`date +%m`_`date +%Y`.tar";

# Create compressed file using tar and move to backup folder
tar cvf /backupfolder/$filename /home/nishkarshraj/Desktop/HelloWorld

# Move to Backup folder
cd /backupfolder

# List the content
ls

# List the disk usage
du -sh
