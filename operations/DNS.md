## 在Windows系统
  查看本机的DNS缓存
    ipconfig /displaydns
  强制清空DNS缓存，本机会重新读取域名对应的IP
    ipconfig /flushdns
  系统缓存设置：
    在Windows中可以通过C:\Windows\System32\drivers\etc\hosts文件来设置
## 在Linux系统
  清除缓存
    /etc/init.d/nscd restart
## 

## 查询LDNS(本地域名服务器)
  Linux下：
    cat /etc/resolv.conf
  Windows下：
    ipconfig /all

## 查看域名解析的结果
  在Linux和Windows下查看域名解析的结果
    nslookup
  Linux下查询域名解析的过程
    dig www.baidu.com
    [root@localhost Go]# dig www.baidu.com

    ; <<>> DiG 9.7.3-RedHat-9.7.3-2.el6 <<>> www.baidu.com
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 42846
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 3, AUTHORITY: 0, ADDITIONAL: 0

    ;; QUESTION SECTION:
    ;www.baidu.com.         IN  A

    ;; ANSWER SECTION:
    www.baidu.com.      280 IN  CNAME   www.a.shifen.com.
    www.a.shifen.com.   231 IN  A   61.135.169.125
    www.a.shifen.com.   231 IN  A   61.135.169.121

    ;; Query time: 14 msec
    ;; SERVER: 203.196.0.6#53(203.196.0.6)
    ;; WHEN: Thu Nov 17 12:50:48 2016
    ;; MSG SIZE  rcvd: 90

    [root@localhost Go]# 
  注: 上面结果显示，本机的DNS服务器是203.196.0.6，查询端口是53（DNS服务器的默认端口），以及回应长度是90字节。
  加参数+trace跟踪域名的解析过程
    dig www.tmall.com +trace 
  举例：
    [root@localhost Go]# dig www.tmall.com +trace

    ; <<>> DiG 9.7.3-RedHat-9.7.3-2.el6 <<>> www.tmall.com +trace
    ;; global options: +cmd
    .           57009   IN  NS  f.root-servers.net.
    .           57009   IN  NS  m.root-servers.net.
    .           57009   IN  NS  b.root-servers.net.
    .           57009   IN  NS  a.root-servers.net.
    .           57009   IN  NS  d.root-servers.net.
    .           57009   IN  NS  e.root-servers.net.
    .           57009   IN  NS  h.root-servers.net.
    .           57009   IN  NS  g.root-servers.net.
    .           57009   IN  NS  k.root-servers.net.
    .           57009   IN  NS  c.root-servers.net.
    .           57009   IN  NS  j.root-servers.net.
    .           57009   IN  NS  l.root-servers.net.
    .           57009   IN  NS  i.root-servers.net.
    ;; Received 228 bytes from 203.196.0.6#53(203.196.0.6) in 18 ms

    www.tmall.com.      478 IN  CNAME   www.tmall.com.danuoyi.tbcache.com.
    www.tmall.com.danuoyi.tbcache.com. 55 IN A  123.125.7.239
    www.tmall.com.danuoyi.tbcache.com. 55 IN A  123.125.18.106
    www.tmall.com.danuoyi.tbcache.com. 55 IN A  123.125.18.107
    www.tmall.com.danuoyi.tbcache.com. 55 IN A  123.125.18.238
    www.tmall.com.danuoyi.tbcache.com. 55 IN A  123.125.18.239
    www.tmall.com.danuoyi.tbcache.com. 55 IN A  123.125.7.238
    ;; Received 171 bytes from 192.203.230.10#53(e.root-servers.net) in 14 ms
    [root@localhost Go]#
  注：NS(Name Server)
## Key Word
TTL(Time to live)
域名解析记录
    A记录
    NS记录
    MX记录
    CNAME记录
    TXT记录
## Command
ipconfig
tracert(window)/traceroute(linux)
nslookup
dig
# Reference List
 最全面的 DNS 原理入门 http://blog.csdn.net/ceshi986745/article/details/51787406
 nslookup http://roclinux.cn/?p=2441