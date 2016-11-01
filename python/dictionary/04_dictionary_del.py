#!/usr/bin/python
# -*- coding: UTF-8 -*-

dict = {'Name': 'Zara', 'Age': 7, 'Class': 'First'};

del dict['Name']; # delete existing 'Name' entry 
dict.clear(); # 清空所有条目
del dict; # 删除词典

print "dict['Age']:", dict['Age'];
print "dict['School']:", dict['School'];