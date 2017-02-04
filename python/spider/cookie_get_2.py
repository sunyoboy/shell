#!/usr/bin/python
#-*- coding:UTF-8 -*-

import urllib2
import cookielib

# 保存Cookie的文件名，在同级目录下
fileName = 'cookie.txt'
cookie = cookielib.MozillaCookieJar(fileName)
handler = urllib2.HTTPCookieProcessor(cookie)
opener = urllib2.build_opener(handler)
request = urllib2.Request('http://cl.r1u.org/htm_data/16/1702/2234507.html')

# 加上User-Agent信息，伪装成浏览器访问
request.add_header('User-Agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36')
response = opener.open(request)

# 保存cookie到文件
cookie.save(ignore_discard=True, ignore_expires=True)
