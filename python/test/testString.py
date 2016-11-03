#!/usr/bin/python
# -*- coding:UTF-8 -*-

import unittest
class TestStringMethods(unittest.TestCase):
	def test_upper(self):
		self.assertEqual('foo'.upper(), 'FOO')

	def test_isupper(self):
		self.assertTrue('FOO'.isupper())
		self.assertFalse('Foo'.isupper())
		# self.assertTrue('Foo'.isupper()) False
	
	def test_split(self):
		s = 'Hello World'
		self.assertEqual(s.split(), ['Hello', 'World'])
		# check that s.split fails when the separator is not a string
		with self.assertRaises(TypeError):
			s.split(2)


if __name__ == '__main__':
	unittest.main()