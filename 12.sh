#!/bin/bash

# Take input from the user for the filename
echo -e "Enter the filename: \c"
read -r filename

# Check if the file exists and is an ordinary file
if [ -f "$filename" ]; then
    echo "File '$filename' is an ordinary file. Displaying contents:"
    cat "$filename"
else
    echo "File '$filename' does not exist or is not an ordinary file. Cannot display."
fi


filename=$1

# Check if file exists and is a regular file
if [ -f "$filename" ]; then
    echo "File is an ordinary file. Displaying contents:"
    cat "$filename"
else
    echo "File does not exist or is not an ordinary file. Cannot display."
fi