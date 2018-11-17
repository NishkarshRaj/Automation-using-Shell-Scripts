#!/bin/bash
read -p "Filename of archive to be created: " f
tar cvf $f.tar *.log
du -sh $f.tar
mv $f.tar /BackupFolder

