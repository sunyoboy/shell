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



from stations import stations
import requests

def cli():
	arguments = docopt(__doc__)
	from_station = stations.get(arguments['<from>'])
	to_station = stations.get(arguments['<to>'])
	date = arguments['<date>']

	print from_station
	# 构建URL
	url = 'https://kyfw.12306.cn/otn/leftTicket/queryZ?leftTicketDTO.train_date={}&leftTicketDTO.from_station={}&leftTicketDTO.to_station={}&purpose_codes=ADULT'.format(date, from_station, to_station)
	
	print url
	r = requests.get(url, verify=False)
	print(r.json())

if __name__ == '__main__':
	cli()