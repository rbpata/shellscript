#!/bin/bash

# echo "Hidden files in the current directory:"

# List all hidden files
# for file in .*; do
#     if [ -f "$file" ] && [[ "$file" != "." && "$file" != ".." ]]; then
#         echo "$file"
#     fi
# done

echo -e "Enter folder Name:  \c"
read file1

if [ -d "$file1" ];then
    echo "folder$file1 exists"
    ls -la "$file1"
else
    echo "can not find the folder"
fi