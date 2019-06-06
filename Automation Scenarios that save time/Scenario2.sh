#!/bin/bash
find "/home/ubuntu/Desktop/Automation-using-Shell-Scripts/ScenariosFullChapter2/BackupFolder/" -type f -mtime +2 -exec rm {} \;
