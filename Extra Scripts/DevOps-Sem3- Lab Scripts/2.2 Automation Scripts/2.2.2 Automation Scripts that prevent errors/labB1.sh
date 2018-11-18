#!/bin/bash

if [[ $(id -u) -ne 0 ]] ; then
    echo "ERROR: Please run as root." ; exit 1 ;
fi

if [ -z "$1" ]; then
    echo "ERROR: Search pattern not specified" >&2; exit 1;
fi

pattern=$1

getent passwd | cut -d : -f 6 | sed 's:$:/.bash_history:' | xargs -d '\n' grep -s -n -e "$pattern" > /tmp/search
cat /tmp/search | sed 's/.*\/\(.*\)\/\.bash_history\:\(.*\)\:/\1 \t \2 \t/g'

exit 0
