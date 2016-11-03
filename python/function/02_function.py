#!/usr/bin/python
# -*- coding:UTF-8 -*-

#
def changeme(list):
	"change input list"
	list.append([1,2,3,4]);
	print "the values in function: ", list
	return

# call function
list = [10,20,30];
changeme(list);
print "the values out of function: ", list