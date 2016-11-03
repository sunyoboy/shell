#!/usr/bin/python
# -*- coding:UTF-8 -*-

# 1. module also is object of python, 
# has random name property to bind or reference.

# 2. module is file saving python code, module contains function，
# class, variable. It may be contain executable code

# import 'support' module 
import support

support.print_func('Hello World!');

Money = 2000
def AddMoney():
	global Money
	Money = Money + 1;

print Money;
AddMoney();
print Money;

# dir() function

# import math
import math

# 1. dir() : return list (contains all modules, variables, functions in module math)
content = dir(math);

# content contains '__name__', '__file__'
print content;

# 2. globals() and locals()

# 3. reload() 

print locals();
print globals();

# 4. package 