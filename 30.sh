#!/bin/bash
d=$(date +"%u")

if [ "$d" -eq 7 ]; then
    echo "It is the weekend"
else
    echo "It is a weekday"
fi
