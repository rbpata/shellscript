#!/bin/bash

echo “Enter the filename” 
read fn
cat $fn | tr “[a-z][A-Z]” “[A-Z][a-z]”