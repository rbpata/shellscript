#!/bin/bash

if [ $# -eq 1 ]; then
    y=""
    z=""
    l=$1
    i=1
    echo "Length of input: $(echo "$l" | wc -c | cut -c 1-1)"
    while [ $i -le $l ]; do
        x=$(echo "$l" | cut -c $i)
        echo "Character at position $i: $x"
        if [ "$x" = "$y" ]; then
            c=1
            break
        elif [ "$x" = "$z" ]; then
            c=2
            break
        fi
        i=$(expr $i + 1)
    done

    echo "Value of c: $c"

    if [ $c -eq 1 ]; then
        first=$(echo "$1" | cut -d= -f 1)
        second=$(echo "$1" | cut -d= -f 2)
        while [ $first -le $second ]; do
            echo "Running cal for: $first"
            cal $first 07
            first=$(expr $first + 1)
        done
    elif [ $c -eq 2 ]; then
        first=$(echo "$1" | cut -d= -f 1)
        second=$(echo "$1" | cut -d, -f 2)
        cal $first 07
        echo "Argument not entered correctly"
        echo "Invalid argument usage: 12 ml, m2 or 12 ml-m2"
    fi
else
    echo "Invalid number of arguments. Usage: $0 <number>"
fi

#!/bin/bash

n1=$1
n2=$2
n3=$3

if [ "$n2" = "-" ]; then
    if [ "$n3" -lt "$n1" ]; then
        echo "Enter valid inputs."
        exit 1
    fi

    i=$n1
    while [ "$i" -lt "$n3" ]; do
        cal "$i"
        ((i+=1))
    done
elif [ "$n2" = "," ]; then
    cal "$n1"
    cal "$n3"
else
    echo "Invalid inputs provided."
    exit 1
fi
