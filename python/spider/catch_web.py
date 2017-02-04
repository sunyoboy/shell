#!/usr/bin/python

import re
import urllib
url="http://cl.r1u.org/htm_data/16/1702/2230415.html"
s=urllib.urlopen(url).read()
print s
urls=re.findall(re.compile(r"(.*\.jpg)"),s)
for i in urls:
 print i
else:
 print 'this is over'
