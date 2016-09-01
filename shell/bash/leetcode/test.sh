#!/bin/bash
IFS='\n'
for word in `cat file.txt`
do
  printf "%s\r\n" $word
done
