# shell
common shell for work

# linux shell 
## 查看命令 http://www.linuxidc.com/Linux/2012-07/66766.htm

# awk 
* 查看错误日志 awk '{if($0 ~ /ERROR/) {print $0} if($0 ~ /^ +.*$/) { print $0}}' all.log

## 打印出匹配“3”的文本行及其之后的3行 ——> grep -A 3 "3" data.txt 
## 打印出匹配“3”的文本行及其之前的3行 ——> grep -B 3 "3" data.txt 
## 打印出匹配“3”的文本行及其之前的3行和之后的3行 ——> grep -C 3 "3" data.txt 
