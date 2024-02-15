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
