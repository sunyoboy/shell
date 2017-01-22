#!/usr/bin/python
# -*- coding: UTF-8 -*-

# 解析station信息
import re
import requests
import sys
type = sys.getfilesystemencoding()
from pprint import pprint
url = 'https://kyfw.12306.cn/otn/resources/js/framework/station_name.js?station_version=1.8994'
response = requests.get(url, verify=False)
stations = re.findall(u'([\u4e00-\u9fa5]+)\|([A-Z]+)', response.text)
print type
# pprint(dict(stations), indent=4)