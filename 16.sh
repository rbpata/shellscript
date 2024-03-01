#!/bin/bash

for i in *
do
  if [ -d $i ]
  then
    countd=`expr $countd + 1`
  fi
  if [ -f $i ]
  then
    countf=`expr $countf + 1`
  fi
done
echo “Number of directories are $countd ”
echo “Number of Ordinary files are $countf”

#!/bin/bash

cf=0
cdir=0

for i in *; do
    if [ -d "$i" ]; then
        echo "$i is a directory"
        ((cdir += 1))
    fi
    if [ -f "$i" ]; then
        echo "$i is a file"
        ((cf += 1))
    fi
done

echo "file :- $cf"
echo "dir :- $cdir"

file=0
fol=0

for i in *;do
        if [ -d "$i" ];then
                ((file += 1))
        fi
        if [ -f "$i" ];then
                ((fol += 1 ))
        fi
done

echo "file :- $file , folder = $fol"