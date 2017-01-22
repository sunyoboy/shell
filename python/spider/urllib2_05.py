#!/usr/bin/python
#-*-coding:UTF-8-*-

import urllib
import urllib2
import os
import re

def callbackfunc(blocknum, blocksize, totalsize):
    '''回调函数
    @blocknum: 已经下载的数据块
    @blocksize: 数据块的大小
    @totalsize: 远程文件的大小
    '''
    percent = 100.0 * blocknum * blocksize / totalsize
    if percent > 100:
        percent = 100
    print "%.2f%%"% percent

def getHtmlDoc(url):
	req = urllib2.Request(url)
	resp = urllib2.urlopen(req)
	return resp.read()

url = 'https://mm.taobao.com'
# req = urllib2.Request(url)
# req.add_header('User-Agent', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36');
# print req.get_header('User-Agent')
# response = urllib2.urlopen(req)
# the_page = response.read()
# print the_page
pattern = re.compile('<img src=\"(.*?)\"');
imagelist = re.findall(pattern,getHtmlDoc(url))
# print imagelist
x = 0
for image in imagelist:
	if(image.startswith('/')):
		image = 'https:' + image
		print image
	#urllib.urlretrieve(image)
	urllib.urlretrieve(image, 'D:/%s.jpg' % x ,callbackfunc)
	x += 1


# print the_page
# fd = os.open('zhihu.html', os.O_RDWR|os.O_CREAT)
# os.write(fd, the_page)
# os.close(fd);


