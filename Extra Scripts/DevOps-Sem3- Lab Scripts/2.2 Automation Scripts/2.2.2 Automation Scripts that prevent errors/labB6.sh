#!/bin/bash

first_letter_uppercase() {
    echo $1 | awk '{print toupper(substr($0,0,1))tolower(substr($0,2))}'
}

everything_uppercase() {
    echo $1 | awk '{print toupper($0)}'
}

everything_lowercase() {
    echo $1 | awk '{print tolower($0)}'
}

if [ -z "$1" ]; then
    echo "ERROR: Input text is not supplied in the arguments" >&2; exit 1;
fi

input=$1

echo "
First Letter Capital: $(first_letter_uppercase "$input")
Uppercase: $(everything_uppercase "$input")
Lowercase: $(everything_lowercase "$input")
"
