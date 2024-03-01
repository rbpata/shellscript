#!/bin/bash

# Change directory to the user's home directory
# cd ~ || exit

for file in c*; do
    if [ -f "$file" ]; then  
        new_name="${file}111"
        mv "$file" "$new_name"
        echo "Renamed: $file -> $new_name"
    fi
done

echo "Renaming completed for files starting with 'c'."

for i in c*;do
        if [ -f "$i" ]; then
                new="${i}111"
                mv "$i" "$new"
                echo "Renamed.."
        else
                echo "file not exist.."
        fi
done