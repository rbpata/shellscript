#!/bin/bash

# Find total number of users
total_users=$(cat /etc/passwd | wc -l)

# Find number of users currently logged in
logged_in_users=$(who | wc -l)

# Display the results
echo "Total number of users: $total_users"
echo "Number of users currently logged in: $logged_in_users"