http://os.51cto.com/art/201404/435279.htm
## netstat
    netstat -nap | grep port 将会显示使用该端口的应用程序的进程id
    netstat -a or netstat –all 将会显示包括TCP和UDP的所有连接
    netstat –tcp or netstat –t 将会显示TCP连接
    netstat –udp or netstat –u 将会显示UDP连接
    netstat -g 将会显示该主机订阅的所有多播网络。
## telnet
通过telnet协议连接目标主机，如果telnet连接可以在任一端口上完成即代表着两台主机间的连接良好。
telnet hostname port – 使用指定的端口telnet主机名。这通常用来测试主机是否在线或者网络是否正常。
## traceroute
[root@localhost ~]# netstat -h
usage: netstat [-veenNcCF] [<Af>] -r         netstat {-V|--version|-h|--help}
       netstat [-vnNcaeol] [<Socket> ...]
       netstat { [-veenNac] -I[<Iface>] | [-veenNac] -i | [-cnNe] -M | -s } [delay]

        -r, --route                display routing table
        -I, --interfaces=<Iface>   display interface table for <Iface>
        -i, --interfaces           display interface table
        -g, --groups               display multicast group memberships
        -s, --statistics           display networking statistics (like SNMP)
        -M, --masquerade           display masqueraded connections

        -v, --verbose              be verbose
        -n, --numeric              don't resolve names
        --numeric-hosts            don't resolve host names
        --numeric-ports            don't resolve port names
        --numeric-users            don't resolve user names
        -N, --symbolic             resolve hardware names
        -e, --extend               display other/more information
        -p, --programs             display PID/Program name for sockets
        -c, --continuous           continuous listing

        -l, --listening            display listening server sockets
        -a, --all, --listening     display all sockets (default: connected)
        -o, --timers               display timers
        -F, --fib                  display Forwarding Information Base (default)
        -C, --cache                display routing cache instead of FIB
        -T, --notrim               stop trimming long addresses
        -Z, --context              display SELinux security context for sockets

  <Iface>: Name of interface to monitor/list.
  <Socket>={-t|--tcp} {-u|--udp} {-S|--sctp} {-w|--raw} {-x|--unix} --ax25 --ipx --netrom
  <AF>=Use '-A <af>' or '--<af>'; default: inet
  List of possible address families (which support routing):
    inet (DARPA Internet) inet6 (IPv6) ax25 (AMPR AX.25) 
    netrom (AMPR NET/ROM) ipx (Novell IPX) ddp (Appletalk DDP) 
    x25 (CCITT X.25)

##hostname
##ping
##ifconfig
##iwconfig
##netstat
##nslookup
##traceroute
##telent
##ethtool
##finger

## iperf

netstat从内部查看网络的状况，显示网络连接、路由表、接口等信息，我们使用netstat –lntup，l是监听，n是用数字格式显示，如用ip地址、端口号都用数字表示，t是tcp信息，u是udp信息，p是端口

nmap –sT 172.0.0.1
tcpdump -i eth0
wireshark
http://os.51cto.com/art/201402/429890.htm
4个强大的Linux服务器监控工具 http://os.51cto.com/art/201402/428680.htm

Nmap是一个广泛使用的安全扫描工具，自1997年发布以来，已经有十多年历史了，它使用各种特殊的数据包探测网络，包括创建一个IP地址映射，确定目标IP地址的操作系统类型，探测特定IP地址上开放的端口，它最基本的一个功能就是群ping，确定目标计算机上绑定的IP地址，如下面的命令就是群ping 192.168.1.1到192.168.1.255：

$ nmap -sP 192.168.1.1-255
五款好玩又好用的Linux网络测试和监控工具 http://os.51cto.com/art/201403/431950.htm
七大实用命令行工具 http://os.51cto.com/art/201004/196757_1.htm

linux监控工具 http://os.51cto.com/art/201005/200741.htm    