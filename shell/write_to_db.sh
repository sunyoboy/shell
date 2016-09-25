#!/bin/bash
#用途：将从CSV中读取数据并写入mysql数据库

USER='root'
PWD='sunlj'

if [ $# -ne 1 ];
then 
   echo $0 DATAFILE
   exit 2
fi
data=$1
while read line;
do 
  query=`echo $line | awk -F, '{printf("%s,\"%s\",%s,\"%s\"",$1,$2,$3,$4)}'`
  echo $query
  mysql -u $USER -p$PWD student <<EOF 2> /dev/null
  # statement=`echo "INSERT INTO students VALUES($query);"`
  # echo $statement
  INSERT INTO students VALUES($query);
  EOF
done < $data
