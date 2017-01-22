#!/usr/bin/python
#-*- coding:UTF-8 -*-

import urllib
import urllib2
import os

url = 'https://zhuanlan.zhihu.com/p/24552995'
req = urllib2.Request(url)
req.add_header('User-Agent', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36');
print req.get_header('User-Agent')
response = urllib2.urlopen(req)
the_page = response.read()
# print the_page
fd = os.open('zhihu.html', os.O_RDWR|os.O_CREAT)
os.write(fd, the_page)
os.close(fd);


