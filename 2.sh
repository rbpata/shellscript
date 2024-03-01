#!/bin/bash

echo "Enter any file or path: "
read -r file

# Check if the entered path exists
if [ -e "$file" ]; then
    absolute_path=$(realpath "$file")
    ls -l "$absolute_path"
else
    echo "File or path not found."
fi


echo "Enter a file name"
read -r file

if [ -e "$file" ]; then
        path=$(realpath "$file")
        echo "$path"
else
        echo "not found"
fi
