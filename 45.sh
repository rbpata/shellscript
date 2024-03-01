#!/bin/bash

echo "Enter the filename: "
read fn

# Display options to the user
echo "1. Display the contents of the file sorted by marks in descending order"
echo "2. Display the names of students in alphabetical order ignoring the case."
echo "3. Display students according to their roll numbers."
echo "4. Sort file according to the second field and save it to file 'names'."
echo "5. Display the list of students who scored between 70 and 80"

echo "Enter your choice: "
read ch

case $ch in
    1) sort -k5 -rn "$fn" ;;
    2) sort -k3 -f "$fn" ;;
    3) sort -k1 "$fn" ;;
    4) sort -k2 "$fn" > names ;;
    5) awk '{ if ($5 >= 70 && $5 <= 80) print $0 }' "$fn" ;;
    *) echo "Invalid Choice" ;;
esac

# student file

101 John 75
102 Alice 85
103 Bob 70
104 Emily 95
105 Sam 80



#!/bin/bash

# a. Display the contents of the file sorted by marks in descending order
echo "a. Contents of the file sorted by marks in descending order:"
sort -k3nr student_data.txt > sorted_by_marks.txt

# b. Display the names of students in alphabetical order ignoring the case
echo -e "\nb. Names of students in alphabetical order ignoring case:"
sort -k2 -f student_data.txt | awk '{print $2}' > names_alphabetical.txt

# c. Display students according to their roll numbers
echo -e "\nc. Students sorted by roll numbers:"
sort -k1n student_data.txt > sorted_by_rollno.txt

# d. Sort file according to the second field and save it to file 'names'
echo -e "\nd. Sorting file according to the second field and saving it to 'sorted_by_names.txt':"
sort -k2 student_data.txt > sorted_by_names.txt

# e. Display the list of students who scored between 70 and 80
echo -e "\ne. List of students who scored between 70 and 80:"
awk '$3 >= 70 && $3 <= 80' student_data.txt > scores_between_70_and_80.txt
