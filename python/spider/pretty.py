#!/usr/bin/env python
# -*- coding:utf-8 -*-
#Author: ####

from prettytable import PrettyTable
x = PrettyTable(["姓名", "性别", "年龄", "存款"])

x.align["姓名"] = "1" #以姓名字段左对齐
x.padding_width = 1  # 填充宽度
x.add_row(["赵一","男", 20, 100000])
x.add_row(["钱二","男", 21, 500])
x.add_row(["孙三", "男", 22, 400.7])
x.add_row(["李四", "男", 23, 619.5])
x.add_row(["周五", "男", 24, 1214.8])
x.add_row(["吴六", "女", 25, 646.9])
x.add_row(["郑七", "女", 26, 869.4])
x.add_row(["王七加一", "男", 21, 869.4])

print(x)