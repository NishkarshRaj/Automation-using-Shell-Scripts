#!/bin/bash
echo "Number of arguments are: $#"
echo "Filename is: $0"
i=1
while [ i\<$# ]
do
echo "$i command entered on runtime is: $(($i))"
i=i+1
done
