#!/bin/bash
#IFS='\n'
cat file.txt | while read i
do
    echo "$i" | grep "^[[:digit:]]\{3,3\}-[[:digit:]]\{3,3\}-[[:digit:]]\{4,4\}$" 
    # echo "$line" | grep "^\([[:digit:]]\{3,3\}\)\s\{1\}[[:digit:]]\{3,3\}-[[:digit:]]\{4,4\}$"
    echo "$i" | grep "([[:digit:]]\{3,3\})\s[[:digit:]]\{3,3\}-[[:digit:]]\{4,4\}$"
done

