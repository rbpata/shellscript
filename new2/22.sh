#!/bin/bash

# if [ $# -eq 0 ]; then
#     ls -l /home
# else
#     ls -l "$1"
# fi

if [ $# ]; then
    ls $1
else
    ls $HOME
fi
