#!/bin/bash

name="john"

# A string is given as input to case statement.
case "$name" in

    # Checks for the switch that matches and executes that action.
    john) echo "Welcome Admin" ;;
    alexa) echo "Welcome User" ;;

    # If none is matched, "*" switch gets executed.
    *) echo "Access Denied" ;;
esac