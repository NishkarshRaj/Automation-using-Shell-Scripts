#!/bin/bash
path1="/home/ubuntu/Desktop/Automation-using-Shell-Scripts/ScenariosFullChapter2/RecycleBin"
echo "Following files are present on the Recycle Bin currently: "
ls $path1
read -p "Enter the filename you want to recover: " f
read -p "Do you really want to recover? " resp
case $resp in
y|Y|YES|yes)
read -p "Enter the Destination Path: " dest
mv $path1/$f $dest
echo "File recovered!!!"
;;
*) echo "No files recovered!!"
;;
esac
