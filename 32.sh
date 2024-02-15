#!/bin/bash

# Get the last modified file in the current directory
last_modified_file=$(ls -t | head -n1)

# Check if any file exists in the directory
if [ -n "$last_modified_file" ]; then
    echo "Last modified file in the current directory: $last_modified_file"
else
    echo "No files found in the current directory."
fi
