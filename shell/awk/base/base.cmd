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
