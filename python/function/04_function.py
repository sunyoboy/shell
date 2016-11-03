#!/usr/bin/python
# -*- coding:UTF-8 -*-

#
def printinfo(arg1, *vartuple):
	"print every input string"
	print "output";
	print arg1
	for var in vartuple:
		print var
	return;

# call function
printinfo(10);
printinfo(70,60,50);

total = 0;
def sum(arg1, arg2):
	"return the sum of arg1 and arg2"
	total = arg1 + arg2; # total为局部变量
	print "the local variable :", total
	return total;

sum(10, 20);
print "the global variable: ", total;