#!/bin/bash

echo -e "Enter the filename: \c"
read -r filename

if [ -z "$filename" ]; then
    echo "Filename cannot be empty. Please provide a valid filename."
elif [ -f "$filename" ]; then
    last_modified=$(stat -c %y "$filename")
    echo "Last modification time of '$filename': $last_modified"
else
    echo "File '$filename' not found."
fi

