#!/bin/bash

removelog="/var/log/remove.log"

if [ $# -eq 0 ] ; then
  echo "Usage: $0 [-s] list of files or directories"; exit 0;
fi

if [ "$1" = "-s" ] ; then
  shift
else
  echo "$(date): ${USER}: $@" >> $removelog
fi

/bin/rm "$@"

exit 0
