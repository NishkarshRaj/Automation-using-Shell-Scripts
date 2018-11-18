#!/bin/bash
read -p "Enter the username of the new user you want to create: " usr
adduser $usr
cd 
cd .. #Go to the absolute root
sudo usermod -aG sudo $usr #Give user all the root permissions
chmod 777 $usr #Give the user all rwx permissions
read -p "Enter a group name for your user: " grp
addgroup $grp
sudo usermod -aG $grp $usr #add the user to the new group
echo "The user has been created!!!!!" 
