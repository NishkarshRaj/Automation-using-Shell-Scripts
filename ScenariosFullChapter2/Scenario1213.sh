#!/bin/bash
read -p "Enter the path of the folder to Encrypt: " f
gpg -c $f
echo "Folder encrypted!!"
read -p "Do you want to decrypt now? " res
case $res in
y|Y|yes|YES) gpg -d $f.gpg ;;
*) echo "Folder is still encrypted!!!" ;;
esac
