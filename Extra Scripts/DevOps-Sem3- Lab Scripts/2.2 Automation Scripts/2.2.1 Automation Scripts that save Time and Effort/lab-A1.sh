#!/bin/bash

read -e -p "Log Directory: " log_directory

read -e -p "File Extension: " extension

read -e -p "Backup Directory: " backup_directory

tar czf archive.tar.gz $(find $log_directory -name "*.$extension")

mv archive.tar.gz $backup_directory/$(date +%F).tar.gz

rm $(find $log_directory -name "*.$extension")

exit 0
