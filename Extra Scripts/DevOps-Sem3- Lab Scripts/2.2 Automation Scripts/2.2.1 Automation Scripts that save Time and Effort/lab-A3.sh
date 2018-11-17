#!/bin/bash

if [ -z "$1" ]; then
    echo "ERROR: Credentials file not specified" >&2; exit 1;
elif [ -z "$2" ]; then
    echo "ERROR: Backup directory not specified" >&2; exit 1;
fi

credentials_file=$(realpath $1)
backup_directory=$(realpath $2)
if [ ! -f "$credentials_file" ]; then
    echo "ERROR: Credentials file does not exist" >&2; exit 1;
elif [ ! -d "$backup_directory" ]; then
    echo "ERROR: Backup directory does not exist" >&2; exit 1;
fi

source $credentials_file

if [ -z ${hostname:+word} ]; then
    echo "ERROR: hostname is not set" >&2; exit 1;
elif [ -z ${username:+word} ]; then
    echo "ERROR: username is not set" >&2; exit 1;
elif [ -z ${password:+word} ]; then
    echo "ERROR: password is not set" >&2; exit 1;
fi

mysqldump -h$hostname -u$username -p$password --all-databases > backup.sql
if [[ $? != 0 ]]; then
    echo "ERROR: Error in taking mysql backup" >&2; exit 1;
fi

mv backup.sql $backup_directory/$(date +%F_%R).sql

path_to_script=$(realpath "$0")
if ! (crontab -l | grep -Fxq "0 */12 * * * $path_to_script $credentials_file $backup_directory"); then
    crontab -l | { cat; echo "0 */12 * * * $path_to_script $credentials_file $backup_directory"; } | crontab -
    echo "Script added to Cron"
fi

exit 0

#
# Credentials File
#
# hostname=localhost
# username=root
# password=password
#