#!/usr/bin/python
# -*- coding:UTF-8 -*-

import MySQLdb

# open db connection
db = MySQLdb.connect('localhost','school','school','gosee')

# get cursor by cursor()
cursor = db.cursor()

# execute sql by execute()
# cursor.execute('SELECT VERSION()')
cursor.execute('SELECT * from sa_user')

# fetchone() get one item
data = cursor.fetchone()

# print "Database version : %s " % data
print "System Manager : ", data

# close connection
db.close()
