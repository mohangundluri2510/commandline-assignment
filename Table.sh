#!/bin/bash

# checking the length of arguments if no argument passed raise error
if [ $# -eq 0 ]; then
  echo "Error, Please enter a argument to generate table"
  exit 1
fi

# storing all the arguments in argument_array
argument_array=("$@")

echo "The elements in the array ${argument_array[@]}"


length="$((${#argument_array[@]}-1))"

echo "length of array is $length"

index=0
while [[ $index -le $length ]]; do

    n=$((argument_array[$index])) # Intiliaing the first argument as n
    c=1 # Counter Variable
    echo "Given number - $n"
    echo "Table of $n:"
    # Using while loop to generate the table
    while [ $c -le 10 ] # while counter is less than 10
      do
        result=$(( $n * $c )) # Calculating the product
        echo "$n x $c = $result" # Printing the product
        c=$(( $c + 1 )) # Incrementing the counter
      done

    if [[ $index -ne $length ]]; then
    # Adding space
      echo ""
    fi
    # Updating index
    index=$((index+1))
    
done

exit 0