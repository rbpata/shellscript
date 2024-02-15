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
