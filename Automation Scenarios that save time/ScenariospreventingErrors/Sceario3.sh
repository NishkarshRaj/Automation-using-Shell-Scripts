#!/bin/bash
read var
if [ -z $var ]
then
read var
fi
compressed="$(echo $var | sed -e 's/[^[:alnum:]]'//g)"
if [ $compressed != "$var" ]
then
echo "Input is not alphanumeric"
else
echo "Input is alphanumeric"
fi

