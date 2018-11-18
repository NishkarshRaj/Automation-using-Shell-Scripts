#!/bin/bash

if [ "$#" -ne "2" ]; then
    echo "ERROR: Two files/directories must be passed as arguments" >&2; exit 1;
fi

removed=$(echo -en '\033[31m')
added=$(echo -en '\033[32m')
changed=$(echo -en '\033[34m')
file=$(echo -en '\033[47m')
reset=$(echo -en '\033[0m')

diff -Naru "$@" | sed "
s/^\*\{3\}.*\*\{4\}/$changed&$reset/;t
  s/^-\{3\}.*-\{4\}/$changed&$reset/;t
             s/^@.*/$changed&$reset/;t
         s/^[0-9].*/$changed&$reset/;t
             s/^!.*/$changed&$reset/;t

             s/^-.*/$removed&$reset/;t
             s/^<.*/$removed&$reset/;t

            s/^\*.*/$added&$reset/;t
            s/^\+.*/$added&$reset/;t
             s/^>.*/$added&$reset/;t

       s/^Only in.*/$file&$reset/;t
       s/^Index: .*/$file&$reset/;t
         s/^diff .*/$file&$reset/;t
"

exit 0
