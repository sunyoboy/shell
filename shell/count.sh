#!/bin/bash
IFS=" "
cat words.txt
for word in `cat words.txt`
do
  echo "$word" | sort | uniq -ic
done
#cat words.txt | sort | uniq -ic
