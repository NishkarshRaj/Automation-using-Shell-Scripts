#!/bin/bash
#Send the text to the stdout
echo "Any standard text can be here"
#Send the text to the stderr
echo "Any error text can be here " >&2

#piping the string to standard error stream
#&0 input stream &1 output stream &2 error stream
