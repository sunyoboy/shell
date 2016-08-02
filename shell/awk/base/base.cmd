17. 条件表达式
awk '{max=($1 > $2)? $1: $2; print max}' condata.txt

20. awk范围模式
awk '/Peter/, /Sally/' employees.txt

内量变量：内置变量的名字都是大写的。它们可以被用于表达式，也可以被重置。请参见下表中所列的内置变量。
内置变量
变量名	含义
ARGC	命令行参数的数目
ARGIND	命令行中当前文件在ARGV 内的索引
ARGV	命令行参数构成的数组
CONVFMT	数字转换格式，默认为%.6g
ENVIRON	包含当前shell 环境变量值的数组
ERRNO	当使用getline 函数进行读操作或者使用close 函数时，因重定向操作而产生的系统错误描述
FIELDWIDTHS	在分隔固定宽度的列表时，使用空白而不是FS 进行分隔的字段宽度列表
FILENAME	当前输入文件的文件名
FNR	当前文件的记录数
FS	输入字段分隔符，默认为空格
IGNORECASE	在正则表达式和字符串匹配中不区分大小写
NF	当前记录中的字段数
NR	目前的记录数
OFMT	数字的输出格式
OFS	输出字段分隔符
ORS	输出记录分隔符
RLENGTH	match 函数匹配到的字符串的长度
RS	输入记录分隔符
RSTART	match 函数匹配到的字符串的偏移量
RT	记录终结符，对于匹配字符或者用RS 指定的regex，awk将RT设置到输入文本
SUBSEP	数组下标分隔符










23. awk的BEGIN与END模式
$ awk 'BEGIN{print "MAKE YEAR"}'
MAKE YEAR

$ awk 'END{print "The number of record is " NR}' filename
The number of record is 5

awk '/Mary/{count++}END{print "Mary was found " count " times."}' employees.txt

24. 输出重定向
awk '$4 >= 70 {print $1, $2 > "redirect.txt"} ' employees.txt 

25. 输入重定向(getline)
awk 'BEGIN{"date" | getline d; print d}'

awk 'BEGIN{"date" | getline d; split(d,mon); print mon[2]}'

awk 'BEGIN{while("ls" | getline) print}'

sunljdeMacBook-Pro:base root# awk 'BEGIN{printf "What is your name?";\
getline name < "/dev/tty"}\
$1 ~ name {print "Found " name " on line ", NR "."}\
END {print "See you, " name "."}' employees.txt
What is your name?Mary
Found Mary on line  2.
See you, Mary.
sunljdeMacBook-Pro:base root#

awk 'BEGIN{while (getline < "/etc/passwd" > 0) lc++; print lc}'

26. awk管道
awk '{print $1, $2 | "sort -r "}' dpipe.txt

awk '{print $1, $2 | "sort -r "} END {close("sort -r")}' dpipe.txt

awk '{system("cat" $1);system("clear")}' bdata.txt

27. awk if语句
awk '{if($3 > 20) print $1 " Too high "}' employees.txt

awk '{if($3 > 4000 && $3 < 5000){ safe++; print safe " OK";}}' employees.txt

awk '{if($3 > 5000) { print $1 " Too high ";} else {print "Range is OK";}}' employees.txt

awk '{if($3 > 5000) {count++; print $3;} else {x+5; print $2;}}' employees.txt

awk -f ifelseif.awk idata.txt

28. awk循环
awk '{i=1; while(i<=NF) {print NR, $i, i++}}' employees.txt

awk '{for(i=1; i<NF; i++) print NR, $i}' employees.txt

29. awk控制语句
awk -f next.awk employees.txt
