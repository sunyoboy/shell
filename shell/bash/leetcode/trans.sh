#!/bin/bash
rownum=`cat file.txt | wc -l`
colnum=`awk '{print NF}' file.txt | tail -n 1`
echo "colnum : $colnum"
echo "rownum : $rownum"
for line in `cat file.txt` 
do
  # echo "$line"
  for word in $line 
  do 
    echo "$word "
  done
done
