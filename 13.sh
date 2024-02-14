#!/bin/bash

# Prompt the user for a filename
echo -e "Enter a filename: \c"
read -r filename

# Check if the file is a directory
if [ -d "$filename" ]; then
    echo "Contents of the directory '$filename':"
    ls "$filename"
else
    echo "File '$filename' is not a directory."
fi
