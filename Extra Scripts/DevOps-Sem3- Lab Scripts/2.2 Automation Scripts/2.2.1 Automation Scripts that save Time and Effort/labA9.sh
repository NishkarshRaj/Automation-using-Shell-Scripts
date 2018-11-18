#!/bin/bash

recycle_bin="$HOME/.recycle_bin"
rm="/bin/rm"
move="/bin/mv"

destination=$(pwd)

if [ ! -d $recycle_bin ] ; then
    echo "ERROR: Recycle Bin directory was not found in your home directory" >&2 ; exit 1;
fi

cd $recycle_bin

if [ $# -eq 0 ] ; then
    echo "Deleted files in the recycle bin:"
    ls -FC | sed -e 's/\([[:digit:]][[:digit:]]\.\)\{5\}//g' -e 's/^/  /' 
    exit 0
fi

pattern_matches="$(ls *"$1" 2> /dev/null | wc -l)"

if [ $pattern_matches -eq 0 ] ; then
    echo "ERROR: No match for the pattern \"$1\" in the recycle bin" >&2; exit 1;
fi

if [ $pattern_matches -gt 1 ] ; then
    echo "More than one file or directory match in the archive:"
    index=1
    for name in $(ls -td *"$1"); do
        datetime="$(echo $name | cut -c1-14| awk -F. '{ print $5"/"$4" at "$3":"$2":"$1 }')"
        if [ -d $name ] ; then
            size="$(ls $name | wc -l | sed 's/[^0-9]//g')"
            echo " $index)   $1  (contents = ${size} items, deleted = $datetime)"
        else
            size="$(ls -sdk1 $name | awk '{print $1}')"
            echo " $index)   $1  (size = ${size}Kb, deleted = $datetime)"
        fi
        index=$(( $index + 1))
    done
    
    echo "" 
    read -e -p "Which version of $1 do you want to restore ('0' to quit)? [1] : " desired

    if [ ${desired:=1} -ge $index ] ; then
        echo "ERROR: Restore cancelled by user: index value too big." >&2; exit 1;
    fi

    if [ $desired -lt 1 ] ; then
        echo "ERROR: Restore cancelled by user." >&2 ; exit 1;
    fi

    restore="$(ls -td1 *"$1" | sed -n "${desired}p")"
    if [ -e "$destination/$1" ] ; then
        echo "ERROR: Already exists in this directory. Cannot overwrite." >&2; exit 1;
    fi

    echo -n "Restoring file \"$1\" ..."
    $move "$restore" "$destination/$1"
    echo "done."

    read -e -p "Delete the additional copies of this file? [y] " answer
    
    if [ ${answer:=y} = "y" ] ; then
        $rm -rf *"$1"
        echo "deleted."
    else
        echo "additional copies retained."
    fi
else
    if [ -e "$destination/$1" ] ; then
        echo "ERROR: Already exists in this directory. Cannot overwrite." >&2; exit 1;
    fi

    restore="$(ls -d *"$1")"

    echo -n "Restoring file \"$1\" ... "
    $move "$restore" "$destination/$1"
    echo "done."
fi

exit 0
