#!/bin/bash

echo -e "Enter File Name 1: \c"
read f1

cat $f1 | tr -d " " > $f1