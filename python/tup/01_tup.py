#!/usr/bin/python
# -*- coding: UTF-8 -*-

tup1 = (12, 34.56);
tup2 = (1, 2, 3, 4, 5, 6, 7);

print "tup1[0]", tup1[0]
print "tup2[1:5]", tup2[1:5]

# 1、元组运算
# 计算元素个数 
print "len((1, 2, 3)) : ", len((1, 2, 3));

# 连接
print "(1, 2, 3) + (4, 5, 6) : ", (1, 2, 3) + (4, 5, 6);

# copy
print "['Hi!'] * 4 : ", ['Hi!'] * 4;

# 存在
print "3 in (1, 2, 3) : ", 3 in (1, 2, 3);

# 迭代
for x in(1, 2, 3):print x,

print "New ";

# 2、索引、截取
L = ('A', 'B', 'C');

print L[2]; # 取索引为2的元素，index start from 0
print L[-2]; # 反向读取，倒数第二个
print L[1:]; # 截取index从1开始的元素

# 3、无关闭分割符
print 'abc', -4.24e93, 18+6.6j, 'xyz'
x, y = 1, 2
print "Value of x, y : ", x, y;

# 4、元组内置函数
# 1. cmp(tuple1, tuple2) : compare two tuple element.
# 2. len(tuple) : count number of elements.
# 3. max(tuple) : return the max element.
# 4. min(tuple) : return the min element.
# 5. tuple(seq) : convert seq to tuple.
