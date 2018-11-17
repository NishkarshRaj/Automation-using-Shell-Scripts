#!/bin/bash/
ls /home/ubuntu/Desktop/trashmine/
read -p "Enter which file or folder to delete: " file1
read -p "Do you really want to recover? " res
case $res in
y|Y|yes|YES) 
read -p "Enter the path to send the recovered file: " p 
mv /home/ubuntu/Desktop/trashmine/$file1 $p ;;
echo "Recovered the file!!!"
*) ;;
esac 
