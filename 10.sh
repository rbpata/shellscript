#!/bin/bash

current_hour=$(date +%H)

if [ "$current_hour" -ge 5 -a "$current_hour" -lt 12 ]; then
    echo "Good morning! Have a great day!"
elif [ "$current_hour" -ge 12 -a "$current_hour" -lt 17 ]; then
    echo "Good afternoon! Hope you're having a good day."
elif [ "$current_hour" -ge 17 -a "$current_hour" -lt 21 ]; then
    echo "Good evening! Enjoy your evening!"
else
    echo "Good night! Have a peaceful night!"
fi


t=$(date +%H)

if [ "$t" -ge 5 -a "$t" -lt 12 ]; then
        echo "Good morning"
elif [ "$t" -ge 12 -a "$t" -lt 17 ]; then
        echo "Good afternoon"
elif [ "$t" -ge 17 -a "$t" -lt 22 ]; then
        echo "Good evening"
else
        echo "Good night"
fi

