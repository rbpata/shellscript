#!/bin/bash

# Check if an argument is provided
if [ -z "$1" ]; then
    exit 1
fi

# List files starting with the provided character
ls "$1"*
