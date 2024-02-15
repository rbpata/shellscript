#!/bin/bash

echo "Enter First File Name :- "
read -r f1
echo "Enter Second File Name :- "
read -r f2

cmp "$f1" "$f2" >error

total=$(wc -c <error)

echo "$total"

if [ "$total" -eq 0 ]; then
    echo "Both Files Contents Are Same.."
else
    echo "Both Files are not Same.."
fi
