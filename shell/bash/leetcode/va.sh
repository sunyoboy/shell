#!/bin/bash
#echo $IFS
IFS_OLD=$IFS
IFS=$'\n'
for phone in `cat file.txt`
do
    echo "$phone"
done
