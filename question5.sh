arr=( 2 3 4 1 6 7)
echo "Length of the array - ${#arr[@]} "
# echo ${#arr[@]}   # Length of the array
# Method - 1
# Using sort function to find the max and min element.
echo "Max and Min of the array using sort function"

echo "Maximum element in the array - "
echo "${arr[*]}" | tr " " "\n"| sort -nr | head -n1

echo "Minimum element of the array -"
echo "${arr[*]}" | tr " " "\n"| sort -n | head -n1

# # Method - 2
# Using for loop to find the max and min element.
echo -e "\nMax and Min of the array using for loop"
max=${arr[0]} #Assuming first element as max
# Travesing every element in the loop if any element is more than the assumed one change max to it or else continue traversing.
for ele in "${arr[@]}" ; do
    if [ $ele -ge $max ]; then 
		max=$ele
	fi
done
echo "Maximum in the array - $max"


min=${arr[0]} #Assuming first element as min
# Travesing every element in the loop if any element is less than the assumed one change min to it or else continue traversing.
for ele in "${arr[@]}" ; do
    if [ $ele -le $min ]; then 
    	min=$ele
	fi
done
echo "Minimum in the array - $min"