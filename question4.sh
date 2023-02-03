#!/bin/bash
# Creating folder using mkdir
mkdir ~/Desktop/Assignment
echo "Created Assignment Folder in Desktop"

# Creating file using touch
touch ~/Desktop/Assignment/File1.txt
echo "Created File1.txt in Assignment Folder"

# Copying data in question2 to file1 using cat
cat /Users/mohangundluri/Desktop/commandline-assignment/Table.sh  >> ~/Desktop/Assignment/File1.txt
echo "Data in Table.sh appended to File1.txt using cat command"


# Appending given text to file1
echo -e "\n\nWelcome to Sigmoid" >> ~/Desktop/Assignment/File1.txt


echo "Folders in the Desktop"
# Printing files and folders in Desktop
ls -lah ~/Desktop/

exit 0