#!/bin/bash
while true; do
    echo "----------------- MENU -----------------"
    echo "1. Calendar of the current month and year."
    echo "2. Display 'Good Morning/Good Afternoon/Good Evening' based on login time."
    echo "3. User name and home directory."
    echo "4. Terminal name and type."
    echo "5. Machine name."
    echo "6. Number of users currently logged in and list of users."
    echo "7. Exit"

    echo -e "Enter your choice (1-7): \c"
    read choice

    case $choice in
        1) cal;;
        2) hour=$(date +"%H")
           if [ $hour -ge 0 -a $hour -lt 12 ]; then
               echo "Good Morning!"
           elif [ $hour -ge 12 -a $hour -lt 18 ]; then
               echo "Good Afternoon!"
           else
               echo "Good Evening!"
           fi ;;
        3) echo "User: $USER"
           echo "Home Directory: $HOME" ;;
        4) echo "Terminal: $TERM"
           echo "Terminal Type: $SHELL" ;;
        5) echo "Machine Name: $HOSTNAME" ;;
        6) echo "Number of users currently logged in: $(who | wc -l)"
           echo "List of users currently logged in:"
           who ;;
        7) echo "Exiting the script. Goodbye!"
           exit ;;
        *) echo "Invalid choice. Please enter a number between 1 and 7." ;;
    esac

    echo "----------------------------------------"
done
