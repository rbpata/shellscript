#!/bin/bash
echo -e "Enter File Name 1: \c"
read f1
echo -e "Enter File Name 2: \c"
read f2

cat $f1 > vfile
cat $f2 >> vfile
paste -d " " $f1 $f2 >> vfile