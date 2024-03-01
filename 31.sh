#!/bin/bash

if [ $# -lt 1 ];
then
    echo "Invalid arguments.."
else
    echo "Enter a Word :-"
    read w
    x=0

    for i in "$@"; do
        if [ -f "$i" ]; then
            x=$(grep -c "$w" "$i")
            if [ "$x" -ne 0 ]; then
                echo "Word Found in File :- $i"
                break
            fi
        fi
    done
fi


word=$1
shift  # Remove the first argument (the word) from the list of arguments

# Iterate over all filenames provided as arguments
for filename in "$@"; do
    # Check if the file exists
    if [ ! -f "$filename" ]; then
        echo "File '$filename' not found."
        continue  # Skip to the next filename
    fi
    
    # Search for the word in the file using grep
    grep -q "$word" "$filename"
    
    # Check the exit status of grep
    if [ $# -eq 0 ]; then
        echo "Word '$word' found in file '$filename'."
    else
        echo "Word '$word' not found in file '$filename'."
    fi
done

word=$1
shift

for i in "$@";do
        if [ ! -f "$i" ];then
                echo "file not found"
                continue
        fi
        grep -q "$word" "$i"

done

word="$1"
shift

# Iterate over the remaining arguments (file paths)
for file in "$@"; do
    # Check if the file exists
    if [ ! -f "$file" ]; then
        echo "File $file does not exist."
        continue
    fi

    # Check if the word exists in the file
    if grep -q "$word" "$file"; then
        echo "Word '$word' found in file '$file'."
    else
        echo "Word '$word' not found in file '$file'."
    fi
done
