import urllib
import urllib2

url = 'http://192.168.11.240:8090/live/list/20?Latitude=39.993768&Longitude=116.323307'
req = urllib2.Request(url)
response = urllib2.urlopen(req)
the_page = response.read()
print the_page