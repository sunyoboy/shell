#!/usr/bin/python
# -*- coding:UTF-8 -*-

import re

# eg1 :

print(re.match('www','www.runoob.com').span()) #
print(re.match('com','www.runoob.com')) # 

print(re.search('www','www.runoob.com').span()) #
print(re.search('com','www.runoob.com').span()) #

# eg2 :

line = "Cats are smarter then dogs"
matchObj = re.match(r'(.*) are (.*?) .*', line, re.M|re.I)
if matchObj:
	print "matchObj.group() : ", matchObj.group()
	print "matchObj.group(1) : ", matchObj.group(1)
	print "matchObj.group(2) : ", matchObj.group(2)
else:
	print "No match!!"

# eg4 :
phone = "2004-959-559 # this is Phone Number"

# '.' 匹配除 "\n" 之外的任何单个字符, $匹配字符串的末尾。
# '*' 匹配0个或多个的表达式。
num = re.sub(r'#.*$', "", phone)
print "Phone Num : ", num

# '\D' 匹配任意非数字
num = re.sub(r'\D', "", phone)
print "Phone Num : ", num