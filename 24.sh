#!/bin/bash

echo "Enter First File Name :- "
read -r f1
echo "Enter Second File Name :- "
read -r f2

cmp "$f1" "$f2" >error

total=$(wc -c <error)

echo "$total"

if [ "$total" -eq 0 ]; then
    echo "Both Files Contents Are Same.."
else
    echo "Both Files are not Same.."
fi


file1=$1
file2=$2

# Check if both files exist
if [ ! -f "$file1" ]; then
    echo "File '$file1' does not exist."
    exit 1
fi

if [ ! -f "$file2" ]; then
    echo "File '$file2' does not exist."
    exit 1
fi

# Compare the contents of the two files
if cmp -s "$file1" "$file2"; then
    echo "Contents of '$file1' and '$file2' are the same. Deleting '$file2'..."
    rm "$file2"
else
    echo "Contents of '$file1' and '$file2' are different."
fi