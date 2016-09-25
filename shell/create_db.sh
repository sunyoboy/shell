#!/bin/bash
#用途：创建MySQL数据库脚本
#EOF (End Of File)用户自定义终止符, 用法:
# << EOF
# ...
# EOF
# ...表示用户输入，遇到EOF表示用户输入结束
USER='root'
PASSWORD='sunlj'

mysql -u$USER -p$PASSWORD <<EOF 2> /dev/null
create database student;
EOF

[ $? -eq 0 ] && echo Created DB || echo DB already exist
mysql -u $USER -p$PASSWORD student <<EOF 2> /dev/null

# create table
CREATE TABLE students(
  id INT,
  name VARCHAR(100),
  mark INT,
  depart VARCHAR(4)
);
EOF

[ $? -eq 0 ] && echo Created table students || echo Table students already exist


mysql -u $USER -p$PASSWORD student <<EOF 2> /dev/null
DELETE FROM students;
EOF
