#!/bin/bash

# Function to check if number is prime or not
function is_prime() {
  num=$1 # Storing the first argument in num variable
  
  # If num is less than 2 it is not prime
  if [[ $1 -lt 2 ]]; then
    echo "$num is not a prime number." 
    return
  fi

  # Loop from 2 to sqrt(num) to check the num has divisors
  #using basic calucator finding square root of the argument that passed to the function is_prime
  sqrt_num=$(echo "sqrt($num)" | bc)
  
  #looping upto sqrt(num) from 2
  for (( i=2;i<=$sqrt_num;i=$((i+1))));
    do
        if [[ $(($num%$i)) -eq 0 ]]; then # if found it is not prime numer
          echo "$num is not a prime number."
          return
        fi
  done
  
  # else it is prime
  echo "$num is a prime number."
}


# Reading input from user and storing in number
read -p "Enter a number to check: " number 


# Calling is_prime function and passing a argument to it
is_prime $number

exit 0
