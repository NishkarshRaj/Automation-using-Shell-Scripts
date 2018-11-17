#!/bin/bash

if [ "$#" -eq 0  ]; then
    echo "ERROR: Files/Folders to search & replace is not specified" >&2; exit 1;
fi

item_paths=""
for i in $@; do
    item_path=$(realpath $i)
    if [ -f "$item_path" ]; then
        item_paths+="$item_path "
    elif [ -d "$item_path" ]; then
        item_paths+="$item_path/* "
    else
        echo "ERROR: The given path \"$item_path\" is not a suitable type" >&2; exit 1;
    fi
done

read -e -p "Search For: " search_text
read -e -p "Replace With: " replace_text

sed -i "s/$search_text/$replace_text/g" $(grep -lz "$search_text" $item_paths)

exit 0
