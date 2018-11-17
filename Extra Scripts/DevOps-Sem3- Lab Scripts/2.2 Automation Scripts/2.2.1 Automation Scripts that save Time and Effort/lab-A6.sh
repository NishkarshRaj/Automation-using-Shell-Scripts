#!/bin/bash

if [[ $(id -u) -ne 0 ]] ; then
    echo "ERROR: Please run as root." ; exit 1 ;
fi

if [ ! -f "/opt/forbidden_commands.txt" ]; then
    echo "ERROR: The file /root/forbidden_commands.txt does not exist" >&2; exit 1;
fi

for user in $(getent passwd | cut -d : -f 6 | grep '/home' | sed 's:$:/.bashrc:'); do
    cat $user | grep -q 'validate_commands'
    if [[ $? != 0 ]]; then
        echo '
function validate_commands {
    cat /opt/forbidden_commands.txt | while read command; do
        if [ "$BASH_COMMAND" == "$command" ]; then
            echo "Sorry! \"$BASH_COMMAND\" cannot be executed";
            exit 1;
        fi
    done
}
trap validate_commands DEBUG' >> $user
    fi
done

exit 0
