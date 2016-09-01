#!/bin/bash
#Get system infomation
(
sys_time=$(date +"%Y-%m-%d %k:%M:%S")
#os_version=$(lsb_release -a | sed -n '/Description/p' | awk -F '[:]' '{print $2}' | sed 's/^[[:space:]]*//')
os_version=$(cat /etc/issue | grep Linux)
kernel_release=$(uname -r)
netcard_num=$(ifconfig -a | grep eth | wc -l)
echo "[public_info]"
echo -e "sys_time=$sys_time\t#系统时间"
echo -e "os_version=$os_version\t#操作系统版本"
echo -e "kernel-release=$kernel_release\t#内核版本"

#########NETCADE INFOMATION##########
echo 
echo "[netcard_info]"
echo "netcard_num=$netcard_num"
echo "#网卡名字|IP|MAC|网卡驱动|网卡速率|网卡发送流量(bytes)|网卡接收流量(bytes)|网卡总流量(bytes)"
for((n=0;n<$netcard_num;n++))
do
Receive_byte=$(cat /proc/net/dev | grep eth$n | awk '{print$2}')
Send_byte=$(cat /proc/net/dev | grep eth$n | awk '{print$10}')
echo "netcard_$((n+1))=eth$n|\
$(ifconfig eth$n | grep "inet addr" | awk '{print$2}' | awk -F'[:]' '{print$2}')|\
$(ifconfig -a | grep eth$n | awk '{print$5}')|\
$(ethtool eth$n | grep Speed | awk '{print$2}' | sed 's/^[[:space:]]*//')|\
${Receive_byte}|\
${Send_bytei}|\
$(($Receive_byte + $Send_byte))"
done

##########CPU INFOMATION##############
cpu_phical_count=$(cat /proc/cpuinfo | grep "physical id" | sort | uniq | wc -l)
cpu_model=$(cat /proc/cpuinfo | grep "model name" | uniq | awk -F'[:]' '{print$2}')
cpu_core_num=$(cat /proc/cpuinfo | grep cores | uniq | awk -F'[:]' '{print $2}' | sed 's/^[[:space:]]*//')
cpu_process_num=$(cat /proc/cpuinfo | grep process | wc -l)
cpu_frequency=$(cat /proc/cpuinfo |grep MHz|uniq | awk -F'[:]' '{print $2}' | sed 's/^[[:space:]]*//')
cache_size=$(cat /proc/cpuinfo | grep "cache size" | uniq | awk -F'[:]' '{print$2}')
cpu_idle=$(mpstat | grep all | awk '{print$11}')
cpu_used=$(mpstat | grep all | awk '{print$3}')
echo
echo "[cpu_info]"
echo -e "cpu_model=$cpu_model\t#cpu型号"
echo -e "cpu_core_num=$cpu_core_num\t#cpu核数"
echo -e "cpu_phical_count=$cpu_phical_count\t#cpu个数"
echo -e "cpu_frequendy=$cpu_frequency\t#主频/单个"
echo -e "cache_size=${cache_size}*$cpu_process_num\t#缓存"
echo -e "cpu_idle=${cpu_idle}%\t#空闲率"
echo -e "cpu_used=${cpu_used}%\t#使用率"

###########memeber info###############
echo
echo "[mem_info]"
echo -e "mem_total=$(free -m | grep Mem | awk '{print$2}')\t#总内存"
echo -e "mem_used=$(free -m | grep buffers/cache | awk '{print$3}')\t#已使用"
echo -e "mem_free=$(free -m | grep buffers/cache | awk '{print$4}')\t#可使用"

###########hard info ##################
file_system_num=$(df -Ph | grep / | wc -l)
echo
echo "[hard_info]"
echo "file_system_num=$file_system_num"
echo "#磁盘总容量(单位M)|已用容量(单位M)|可用流量(单位M)|已用百分比（%）|挂载目录"
df -Pm | grep / | awk '{print$2"|"$3"|"$4"|"$5"|"$6}'
exit 0
) >system_infomation.txt

