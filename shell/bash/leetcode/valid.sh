#!/bin/bash
#echo $IFS
IFS_OLD=$IFS
IFS=$'\n'
for phone in `cat file.txt`
do  
    if [[ $phone =~ ^[0-9]{3,3}-[0-9]{3,3}-[0-9]{4,4} ]]; 
    then
       echo "$phone"
    fi
    #echo "$phone" | grep "^[[:digit:]]\{3,3\}-[[:digit:]]\{3,3\}-[[:digit:]]\{4,4\}$"
    #"$phone" | grep "^([[:digit:]]\{3,3\})\s[[:digit:]]\{3,3\}-[[:digit:]]\{4,4\}$"
done
