#!/bin/bash
echo "ENter UserName :- "
read username

# Check if the user is logged in
if who | grep -q "^$username "; then
    echo "$username is currently logged in."
else
    echo "$username is not currently logged in."
fi
