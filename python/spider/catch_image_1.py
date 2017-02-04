#!/usr/bin/python
# -*- coding:utf-8 -*-
import urllib2
import re

url = 'https://mm.taobao.com/'
try:
    req = urllib2.Request(url)
    res = urllib2.urlopen(req)
    # print res.read()
    content = res.read()
    pattern = re.compile('^[(http)(https)].*?[(png)(jpg)]',re.S)
    items = re.findall(pattern,content)
    for item in items:
        print item[0], item[1], item[2], item[3], item[4]
    
except urllib2.URLError, e:
    if hasattr(e,"error"):
        print e.code
    if hasattr(e,"reason"):
        print e.reason

