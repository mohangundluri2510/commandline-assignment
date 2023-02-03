## commandline-assignment
The above are the codes for the given questions in the assignemnt and the approach for each code is explained below.

<h2> Question - 1 </h2>
Write a bash script to get the current date, time, username, home directory and current working directory.

<p> <b> Apporach - </b> </p>
We have used the following commands to fetch the desired details,
Command	Function
<pre>
  $(date +"Year: %Y, Month: %m, Day: %d")	Command to fetch the date
  $(date +"%T")	Command to fetch the time
  $(whoami)	Command to fetch the current working user
  $(echo $HOME)	Command to fetch the Home directory
  $(pwd)	Command to fetch the current wokring directory
</pre>

<ul>
  <li>$(date +"Year: %Y, Month: %m, Day: %d")	Command to fetch the date</li>
  <li>$(date +"%T")	Command to fetch the time</li>
  <li>$(whoami)	Command to fetch the current working user</li>
  <li>$(echo $HOME)	Command to fetch the Home directory</li>
  <li>$(pwd)	Command to fetch the current wokring directory</li>
 </ul>
<p> <b> Test run (Output) - </b> </p>

<img width="754" alt="Screenshot 2023-02-03 at 5 20 02 PM" src="https://user-images.githubusercontent.com/123619711/216596364-302d6c09-4f8f-45f1-b4ed-df5227d7aa47.png">

<h2> Question - 2 </h2>
Write a bash script (name Table.sh) to print the Table of a number by using a while loop. It should support the following requirements.

The script should accept the inputs from the command line.
If you don’t input any data, then display an error message to execute the script correctly.
<b> Apporach - </b>
We verify whether any arguments have been passed, and if not, we issue an error and quit the programme with exit status 1. If not, we store the all arguments in array then run while loop on array, start a counter internally on the second while loop, increment it after each iteration, fetch the result, and repeat this internal loop for each element in the arguments list until the counter value is less than 10, at which point the programme ends.

<code>n=${array[0]} # Intiliaing the first argument as n
  c=1 # Counter Variable
  echo "Given number - $n"
  echo "Table of $n:"
  #Using while loop to generate the table
  while [ $c -le 10 ] # while counter is less than 10
  do
    result=$(( $n * $c )) # Calculating the product
    echo "$n x $c = $result" # Printing the product
    c=$(( $c + 1 )) # Incrementing the counter
  done
  exit 0</code>

<p> <b> Test run (Output) - </b> </p>
<h4>Case - 1 :When no arguments are passed </h4>
<img width="754" alt="Screenshot 2023-02-03 at 5 27 37 PM" src="https://user-images.githubusercontent.com/123619711/216598111-f0601102-70ab-4681-9699-76e236fc21f8.png">


<h4> Case-2: When 1 arguments is passed </h4>
<img width="754" alt="Screenshot 2023-02-03 at 5 29 34 PM" src="https://user-images.githubusercontent.com/123619711/216598383-c54124aa-2de6-4a97-93da-b515d7c557e7.png">


<h4> Case-3: When more than 1 arguments are passed </h4>

<img width="769" alt="Screenshot 2023-02-03 at 5 31 07 PM" src="https://user-images.githubusercontent.com/123619711/216598695-5bbc342e-e353-4df4-9b55-82fd3bedfc5f.png">

<h2>Question - 3</h2>
Write a Function in bash script to check if the number is prime or not? It should support the following requirement. - The script should accept the input from the User.

<p><b> Apporach - </b> </p>
We created a function called is prime to determine whether a number is prime or not. If the number is lessthan than 2, we indicate that it is not a prime, and if not, we run a loop from 2 to number/2 to see if any of the above numbers divide the given number. If we found any numbers, we can conclude that the number is not a prime because it has a divisor other than 1 and itself.

We receive user input in the main code, store it in a variable, and then call the function while sending the argument as command line arguments.

<p> <b> Test run (Output) - </b> </p>
<img width="769" alt="Screenshot 2023-02-03 at 5 36 28 PM" src="https://user-images.githubusercontent.com/123619711/216599885-0f182f63-d796-4b82-878e-2c065cdb9466.png">

<h2> Question - 4 </h2>
Create a bash script that supports the following requirement.
<p> Create a folder ‘Assignment’.</p> 
<p> Create a file ‘File1.txt’ inside ‘Assignment’ Folder.</p> 
<p> Copy all the content of Table.sh(2nd script) in ‘File1.txt’ without using ‘cp’ and ‘mv’ command.</p> 
Append the text Welcome to Sigmoid’ to the ‘File1.txt’ file.

List all the directories and files present inside Desktop Folder.#### Apporach -
<p> <b> Approach - </b> </p>
We have used the following commands to meet the desired requirements and the function of command is as follows.
<div>

  <table>
    <th>td> Command</td><td>Function</td></th>
    <tbody>
        <tr>
            <td>
                mkdir ~/Desktop/Assignment
            </td>
            <td>
                Creating folder using mkdir
            </td>
        </tr>
        <tr>
            <td> touch ~/Desktop/Assignment/File1.txt</td>
            <td>Creating file using touch</td>
        </tr>
        <tr>
            <td>cat ~/Users/mohangundluri/Desktop/commandline-assignment/Table.sh>> ~/Desktop/Assignment/File1.txt</td>
            <td>	Copying data in q2 to file1 using cat</td>
        </tr>
        <tr>
            <td>echo "Welcome to Sigmoid" >> ~/Desktop/Assignment/File1.txt</td>
            <td>Appending given text to file1</td>
        </tr>
        <tr>
            <td>ls -lah ~/Desktop/</td>
            <td>Printing files and folders in Desktop</td>
        </tr>
    </tbody>
  </table>
</div>
<p> <b> Test run (Output) - </b> </p>
<img width="769" alt="Screenshot 2023-02-03 at 5 38 37 PM" src="https://user-images.githubusercontent.com/123619711/216600228-1f9eea1d-5c10-48f1-9e11-78dc4f125c43.png">


<p> <b> Text in File1.txt </b> </p>
<img width="769" alt="Screenshot 2023-02-03 at 5 39 43 PM" src="https://user-images.githubusercontent.com/123619711/216600455-d53bd0b0-1f26-4cb7-a13e-7ea1ffcfc0b7.png">


<p> <b> Text in Table.sh</b> </p>
<img width="769" alt="Screenshot 2023-02-03 at 5 40 50 PM" src="https://user-images.githubusercontent.com/123619711/216600616-ea9171d3-6303-492b-99a4-c2a302dab716.png">


<h2> Question - 5</h2>
You have given an array. Using Bash script, print its length, maximum element and minimum element. arr=( 2 3 4 1 6 7).
<p> <b> Approach - </b> </p>
We have declared the array internally in the code, we have used the following commands to fetch the required result

Command	Function
echo ${#arr[@]}	Length of the array
We have made two methods to find the max and min elements in the given array.
<h5> Method - 1 </h5>
In order to discover the maximum and minimum elements in the given array, we utilised the sort function. For the maximum, we sorted the array in reverse order and used the head1 command to collect the first member.

<p><b> Command	Function </b> </p>
<code>echo "${arr[*]}" |tr " " "\n" | sort -nr | head -n1	Sorting in reverse and fetch the first element
  echo "${arr[*]}" | tr " " "\n" | sort -n | head -n1	Sorting and fetch the first element</code>
<h5> Method - 2</h5>
We use a for loop to get the maximum and minimum element. Using the first element as the maximum, we traverse each element in the loop to see whether it is greater than the maximum value we have assumed.

<p> <b> Max element </b> </p>
<code>max=${arr[0]}
  for ele in "${arr[@]}" ; do
      if [ $ele -ge $max ]; then 
      max=$ele
    fi
  done</code>
<p> <b> Min element </b> </p>
<code>min=${arr[0]}
  for ele in "${arr[@]}" ; do
      if [ $ele -le $min ]; then 
        min=$ele
    fi
  done</code>
<p> <b> Test run (Output) - </b> </p>
<img width="769" alt="Screenshot 2023-02-03 at 5 46 52 PM" src="https://user-images.githubusercontent.com/123619711/216601731-368f2216-2fed-4cab-ba75-de9f5c6d068f.png">
