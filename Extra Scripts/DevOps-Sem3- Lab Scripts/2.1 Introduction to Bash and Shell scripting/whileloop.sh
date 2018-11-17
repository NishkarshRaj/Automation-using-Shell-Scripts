 #!/bin/bash

count="9"

# Evaluates whether "count" is greater than zero and if true, enters loop.
while [ $count -gt 0 ]; do

    # Print the "count"
    echo "$count"

    # Decrease the value of count
    count=$[$count-1]
done
