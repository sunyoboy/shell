#!/usr/bin/python
# -*- coding: UTF-8 -*-
# （命令行）查看火车票工具
# 
"""Usage: tickets [-gdtkz] <from> <to> <date>
  Options:
  -h, --help 		help list
  -g			gaotie
  -d 			dongche

"""
import sys
reload(sys)
sys.setdefaultencoding('utf8')
from docopt import docopt

if __name__ == '__main__':
	arguments = docopt(__doc__)
	print(arguments)