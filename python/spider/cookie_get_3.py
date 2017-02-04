#!/usr/bin/python
#-*- coding:UTF-8 -*-
import urllib
import urllib2
import cookielib
import re
import requests
import requests.packages.urllib3.util.ssl_
print(requests.packages.urllib3.util.ssl_.DEFAULT_CIPHERS)
requests.packages.urllib3.util.ssl_.DEFAULT_CIPHERS = 'ALL'
# 从文件中读取Cookie并访问
#

def getImage(html):
    re_img = re.compile(r'(https\S+\.jpg)')
    imgList = re.findall(re_img,html)
    # 输出列表长度
    # print len(imgList)
    imgName = 1
    for image in imgList:
    	print 'imageURL %s' %image
    	urllib.urlretrieve(image, '%s.jpg' %imgName)
    	print 'image "%s.jpg" done' %imgName
    	imgName += 1

# 保存Cookie的文件名，在同级目录下
fileName = 'cookie.txt'
cookie = cookielib.MozillaCookieJar()
cookie.load('cookie.txt', ignore_discard=True, ignore_expires=True)


# 创建请求的request
request = urllib2.Request('http://cl.r1u.org/htm_data/16/1702/2234507.html')

# 创建一个cookie处理器
handler = urllib2.HTTPCookieProcessor(cookie)

# 利用urllib2.build_opener方法创建一个opener
opener = urllib2.build_opener(handler)

# 加上User-Agent信息，伪装成浏览器访问
request.add_header('User-Agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36')
response = opener.open(request)

# 以gbk编码输出页面代码
# print response.read().decode('gbk')
# 保存cookie到文件
# cookie.save(ignore_discard=True, ignore_expires=True)
getImage(response.read().decode('gbk'))
