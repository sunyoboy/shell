#!/usr/bin/python
# -*- coding:UTF-8 -*-

import sys
import BaseHTTPServer
from SimpleHTTPServer import SimpleHTTPRequestHandler

handler_class = SimpleHTTPRequestHandler # BaseHTTPServer.BaseHTTPRequestHandler # 
server_class = BaseHTTPServer.HTTPServer
protocol = 'HTTP/1.0'

if sys.argv[1:]:
	port = int(sys.argv[1])
else:
	port = 8000

server_address = ('127.0.0.1', 8000)
handler_class.protocol_version = protocol
httpd = server_class(server_address, handler_class)
socketName = httpd.socket.getsockname()
print 'Serving HTTP on ', socketName[0], ' port ', socketName[1], '...'
httpd.serve_forever()
