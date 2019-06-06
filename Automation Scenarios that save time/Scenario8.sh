#!/bin/bash
read -p "Enter the path to delete files from: " path
path1="/home/ubuntu/Desktop/Automation-using-Shell-Scripts/ScenariosFullChapter2/RecycleBin/" #RecycleBin Path
echo "Following files are present on the path specified: "
ls $path
read -p "Enter the filename you want to delete: " f
read -p "Do you really want to delete the file: " res
case $res in
y|Y|yes|YES)
if [ -e $path/$f ]
then
mv $path/$f $path1
else
echo "File does not exist!!"
fi
;;
*) echo "File does not exist!!"
;;
esac

