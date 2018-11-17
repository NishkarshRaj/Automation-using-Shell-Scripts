#!/bin/bash

is_valid_alpha_numeric_text()
{
  filtered_input="$(echo $1 | sed -e 's/[^[:alnum:]]//g')"

  if [ "$filtered_input" == "$1" ] ; then
    return 0
  else
    return 1
  fi
}

read -e -p "Enter Input to validate: " input_text

if [[ "$input_text" == '' ]]; then
    echo "ERROR: Please enter any text to validate." >&2; exit 1;
fi

if ! is_valid_alpha_numeric_text "$input_text" ; then
  echo "Input contains characters other than alphabets and numbers"
else
  echo "Input is absolutely valid."
fi

exit 0
