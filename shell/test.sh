#!/bin/bash
cat /proc/cpuinfo | grep "model name" | uniq
cat /proc/cpuinfo | grep "cores" | uniq
cat /proc/cpuinfo | grep "cache size" | uniq
printf "OS Version: "; head -n 1 /etc/issue

df -h
free -hm
printf "TotalMem :";grep MemTotal /proc/meminfo | awk '{print expr $2 / 1024 " M" }'
printf "FreeMem :";grep MemFree /proc/meminfo | awk '{print expr $2 / 1024 " M" }'
printf "系统运行时间、用户数、负载: "; uptime 
