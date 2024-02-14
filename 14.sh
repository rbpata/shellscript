#!/bin/bash

echo -e "Enter File Name: \c"
read -r filename

if [ -x "$filename" ]; then
    echo "File is executable: $filename"
    cat "$filename"
else
    echo "File is not executable or does not exist."
fi