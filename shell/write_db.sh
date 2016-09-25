#!/bin/bash
#用途：将从CSV中读取数据并写入mysql数据库

USER='root'
PWD='sunlj'

if [ $# -ne 1 ];
then 
   echo $0 DATAFILE
   echo 
   exit 2
fi
data=$1

while read line
do 
  oldIFS=$IFS
  IFS=,
  value=($line)
  values[1]="\"`echo ${values[1]} | tr ' ' '#' `\""
  values[3]="\"`echo ${values[3]} `\""
  query=`echo ${values[@]} | tr ' #' ', '`
  IFS=$oldIFS
  echo $query
  mysql -u $USER -p $PWD student <<EOF
INSERT INTO students VALUES($query);
EOF
done< $data
if [[ $? -eq 0 ]]; then
  echo "Write data into DB"
fi
