# shell
common shell for work

# linux shell 
## 查看命令 http://www.linuxidc.com/Linux/2012-07/66766.htm

# awk 
* 查看错误日志 awk '{if($0 ~ /ERROR/) {print $0} if($0 ~ /^ +.*$/) { print $0}}' all.log
