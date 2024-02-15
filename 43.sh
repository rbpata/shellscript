#!/bin/bash

TO_ADDRESS="recipient@domain.com"
FROM_ADDRESS="sender@domain.com"
SUBJECT="Mail server hosting demo"
BODY="This is a Linux mail system. Linux is one of the email operating systems which can be used to send and receive emails."

echo "$BODY" | mail -s "$SUBJECT" "$TO_ADDRESS" -- -f "$FROM_ADDRESS"

echo "Mail has been successfully sent."
