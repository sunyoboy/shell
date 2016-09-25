#!/bin/bash
#用途：从数据库读数据

USER='root'
PWD='sunlj'

depts=`mysql -u $USER -p$PWD student <<EOF | tail -n +2
SELECT DISTINCT depart FROM students;
EOF`
 
for d in $depts;
do
  echo Department : $d
  
  result="`mysql -u $USER -p$PWD student <<EOF
  SET @i:=0;
  SELECT @i:=@i+1 as rank, name, mark FROM students WHERE depart="$d" 
  ORDER BY mark DESC;
  EOF`"

  echo "$result"
  echo
done
