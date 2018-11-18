#!/bin/bash

downloads_directory="$HOME/Downloads"

if [ -z "$1" ]; then
    echo "ERROR: Download List file is not specified in the arguments" >&2; exit 1;
fi

if ! [ -z "$2" ]; then
    downloads_directory=$2
fi

if [ ! -d $downloads_directory ] ; then
    mkdir -p $downloads_directory
fi


download_list=$1

cat $download_list | while read url; do
    echo "----------------------------------------------------------------------------------------------------"
    echo "$url"
    wget -P $downloads_directory $url
done

exit 0
