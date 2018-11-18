#!/bin/bash

if [ -z "$1" ]; then
    echo "ERROR: The Device name is not specified in the arguments" >&2; exit 1;
elif [ -z "$2" ]; then
    echo "ERROR: The thresold limit is not specified in the arguments" >&2; exit 1;
fi

device_name=$1
thresold_limit=$2
email_id=admin@example.com

percentage_used=$(df -H | grep "$device_name" | awk '{ print $5 }' | cut -d'%' -f1)

if [ $percentage_used -ge $thresold_limit ]; then
    echo "Running out of space \"$device_name ($percentage_used%)\" on $(hostname) as on $(date)" |
    mail -s "Disk usage breached the thresold limit" $email_id
fi

path_to_script=$(realpath "$0")
if ! (crontab -l | grep -Fxq "*/1 * * * * $path_to_script $device_name $thresold_limit"); then
    crontab -l | { cat; echo "*/1 * * * * $path_to_script $device_name $thresold_limit"; } | crontab -
    echo "Script added to Cron"
fi

exit 0
