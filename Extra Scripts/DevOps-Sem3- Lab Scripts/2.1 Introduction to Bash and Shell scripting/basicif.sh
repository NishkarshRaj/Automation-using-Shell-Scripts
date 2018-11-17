 #!/bin/bash

# Initializing variables with a value
number1=5; number2=5

# Expression "[ $number1 -eq $number2 ]" that resolves to a Boolean value.
if [ $number1 -eq $number2 ]; then
    # Code to run if condition is true
    echo "$number1 is equal to $number2"
else
    # Code to run if condition is false
    echo "$number1 is not equal to $number2"
fi
