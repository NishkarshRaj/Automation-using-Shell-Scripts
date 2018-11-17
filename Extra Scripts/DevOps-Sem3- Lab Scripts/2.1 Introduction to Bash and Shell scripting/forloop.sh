#!/bin/bash

# Loop through the items delimited by whitespace in the "names" variable.
names="Name1 Name2 Name3"

for name in $names; do
    echo "Hello $name"
done

# Loop through the items in the substituted sequence command.
for number in `seq 1 10`; do
    echo "I am $number"
done
