#!/usr/bin/python
# -*- coding: UTF-8 -*-
import re
import urllib

def getHtml(url):
    page = urllib.urlopen(url)
    html = page.read()
    return html

def getMp4(html):
    re_mp4 = re.compile(r"(https.*\.jpg)")
    mp4List = re.findall(re_mp4,html)
    print mp4List
	# filename = 1
    # for mp4url in mp4List:
        #print 'mp4url %s' %mp4url
	    # urllib.urlretrieve(mp4url, "%s.jpg" %filename)
	    # print 'file "%s.jpg" done' %filename
	    # filename += 1

url = raw_input("Please input the source url: ")
html = getHtml(url)
print html
getMp4(html)
