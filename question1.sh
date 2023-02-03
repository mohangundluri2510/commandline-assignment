# Question:
# Write a bash script to get the current date, time, username, home directory and current working directory.


#!/bin/bash
current_date=$(date +"Day: %d, Month: %m, Year: %Y") # Command to fetch the date
echo "Current date: $current_date" # displays current date


current_time=$(date +"%T") # Command to fetch the time
echo "Current time: $current_time" # displays current time

username=$(whoami)  #Command to fetch the current working user
echo "Username: $username" # displays username


home_directory=$(echo $HOME) # Command to fetch the Home directory
echo "Home directory: $home_directory" # displays home directory

current_directory=$(pwd) # Command to fetch the current wokring directory
echo "Current working directory: $current_directory" # isplays curent working ddirectory


exit 0