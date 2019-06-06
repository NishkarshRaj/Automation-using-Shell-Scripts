#/bin/bash
echo "List of folders available to change attribute for immuatability!"
ls -ltu /home/ubuntu/Desktop/
read -p "Enter folder to make immuatable: " f
sudo chattr +i $f
echo "Folder made immutable" 

