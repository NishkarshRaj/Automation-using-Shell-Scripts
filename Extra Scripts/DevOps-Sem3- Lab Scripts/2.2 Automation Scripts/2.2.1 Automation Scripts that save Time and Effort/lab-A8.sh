#!/bin/bash

recycle_bin="$HOME/.recycle_bin"
rm="/bin/rm -r "
copy="/bin/cp -r "

if [ $# -eq 0 ] ; then
    echo "ERROR: Please enter the file path to delete." >&2; exit 1;
fi


flags=""

while getopts "dfiPRrvW" args; do
    case $args in
        f ) exec $rm "$@"            ;;
        * ) flags="$flags -$args"    ;;
    esac
done
shift $(( $OPTIND - 1 ))

if [ ! -d $recycle_bin ] ; then
    mkdir $recycle_bin
fi

for arg; do
    newname="$recycle_bin/$(date "+%S.%M.%H.%d.%m").$(basename "$arg")"
    if [ -f "$arg" ] ; then
        $copy "$arg" "$newname"
    elif [ -d "$arg" ] ; then
        $copy "$arg" "$newname"
    fi
done

exec $rm $flags "$@"

exit 0
