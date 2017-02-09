#!/usr/bin/python
# -*- coding: UTF-8 -*-

# 解析station信息
import re
import requests
import simplejson
import sys
type = sys.getfilesystemencoding()
from pprint import pprint
url = 'https://kyfw.12306.cn/otn/resources/js/framework/station_name.js?station_version=1.8994'
response = requests.get(url, verify=False)
# print response.text
# print response.text
# responseText = response.text.decode('utf-8').encode('gbk')
stations = re.findall(u'([\u4e00-\u9fa5]+)\|([A-Z]+)', response.text)

# print(dict(stations), indent=4)
for station in stations:
	print station[0],': ',station[1]','
#   pprint(dict(stations), indent=4)
# 
# simplejson.dumps(stations, ensure_ascii=False) > stations.py
# pprint(dict(), indent=4)