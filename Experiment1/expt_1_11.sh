#!/bin/bash
read -p "Enter a name: " name
case "$name" in
john) echo "Welcome Admin" ;;
*) echo "Access Denied" ;;
alexa) echo "Welcome user" ;;
esac
 

# to continue in case like in c where when we dont specify break... here we use ;&
