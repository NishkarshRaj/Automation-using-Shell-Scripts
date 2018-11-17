#!/bin/bash

if [ "$#" != "2" ]; then
    ( echo "
Usage: `basename $0` <size> <path>

Truncate the <path> to exactly <size> bytes.
* If <path> doesn't exist it is created.
* <size> is a number which can be optionally followed by K, M, G, etc." ) >&2; exit 1;
fi

size=$1
file="$2"

dd bs=1 seek=$size if=/dev/null of="$file"

exit 0
