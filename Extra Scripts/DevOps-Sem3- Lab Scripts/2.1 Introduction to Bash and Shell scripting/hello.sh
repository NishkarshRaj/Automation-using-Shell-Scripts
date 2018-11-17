#!/bin/bash

# Creating a readonly variable called "greeting"
readonly greeting="Hello"

# Creating an ordinary variable called "current_time"
current_time=`date +%X`

# Substitute the output of the command "whoami".
echo "Hi, I am $(whoami)." 

# Prompt the user to provide their name
read -e -p "Who are you? " myName

# Substituting the variables and printing them
echo "${greeting:-Hi}, $myName. Now the time is $current_time"
