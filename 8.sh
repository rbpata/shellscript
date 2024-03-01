#!/bin/bash

for i in $(ls) 
do
    if [ -s "$i" ]; then
        echo "$i - non-empty file"
    else
        echo "$i - empty file, removing..."
        rm "$i"
    fi
done

for i in *
do
    if [ -s "$i" ]; then
        echo "$i - non-empty file"
    else
        echo "$i - empty file, removing..."
        rm "$i"
    fi
done
