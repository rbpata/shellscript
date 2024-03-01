#!/bin/bash

# Define your friend's email address
friend_email="non"

# Check if your friend is currently logged in
if who | grep -q "^$friend_username"; then
    # If logged in, send a message to their terminal suggesting dinner
    echo "Hey $friend_username, how about dinner tonight? :)"
else
    # If not logged in, send an email about the dinner proposal
    echo "Hey $friend_username," > dinner_invitation.txt
    echo "I'm thinking about having dinner tonight. Are you up for it?" >> dinner_invitation.txt
    echo "Let me know if you're interested!" >> dinner_invitation.txt
    # Send email using mailx command
    mailx -s "Dinner Invitation" $friend_email < dinner_invitation.txt
    rm dinner_invitation.txt
fi
