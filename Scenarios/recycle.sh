#!/bin/bash
read -p "Path to delete: " path
ls -ltu $path
path1="/home/ubuntu/Desktop/trashmine/"
read -p "File to Delete: " file1
echo "Do you want to delete?"
read resp
case $resp in
y|Y|yes|YES|yes)
if [ -e $file1 ]
then 
mv $path/$file1 $path1
else
echo "File does not exist" 
fi
;;
*) echo  "not deleted" ;;
esac
