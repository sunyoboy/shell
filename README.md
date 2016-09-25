# shell
common shell for work

# linux shell 
## 查看命令 http://www.linuxidc.com/Linux/2012-07/66766.htm

# awk 
* 查看错误日志 awk '{if($0 ~ /ERROR/) {print $0} if($0 ~ /^ +.*$/) { print $0}}' all.log

## 打印出匹配“3”的文本行及其之后的3行 ——> grep -A 3 "3" data.txt 
## 打印出匹配“3”的文本行及其之前的3行 ——> grep -B 3 "3" data.txt 
## 打印出匹配“3”的文本行及其之前的3行和之后的3行 ——> grep -C 3 "3" data.txt 

## EOF的用法
EOF: 在Linux命令和脚本中表示用户自定义终止符
1 cat << EOF
2 cat << EOF > file.txt

# 2> /dev/null, 1> /dev/null的含义及用法
## 0 表示键盘输入(stdin), 使用 < 或 <<;
## 1 表示标准输出(stdout),系统默认是1, 使用 > 或 >> ；
## 2 表示标准错误输出(stderr）,使用 2> 或 2>> ；
## /dev/null 表示Linux的空设备文件
## & 放在启动参数后面表示设置此进程为后台进程

## 1> /dev/null:表示标准输出重定向到空设备文件,也就是不输出任何信息到终端,终端不显示任何信息
    1> ：以覆盖的方法将『正确的数据』输出到指定的文件或装置上；
    1>>：以累加的方法将『正确的数据』输出到指定的文件或装置上；
    2> ：以覆盖的方法将『错误的数据』输出到指定的文件或装置上；
    2>>：以累加的方法将『错误的数据』输出到指定的文件或装置上；
    “1”与“>”或“>>”之间没有空格
## 2>&1:表示标准错误输出重定向等同于标准输出

### 将 stdout 与 stderr 分存到不同的文件去
    find / -name testing > stdout 2> stderr
### 将错误的数据丢弃，屏幕上显示正确的数据
    find / -name testing > std 2> /dev/null
### 将命令的数据全部写入名为 list 的文件中
    find / -name testing > list 2>&1
    or
    find / -name testing &> list
### 用 stdin 取代键盘的输入以创建新文件的简单流程
    cat > file.txt < stdout

Reference
    http://cn.linux.vbird.org/linux_basic/0320bash_5.php