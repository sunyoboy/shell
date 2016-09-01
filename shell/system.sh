#!/bin/bash
kerne_lname=`uname -s`
machine=`uname -m`
hostname=`uname -n`
kernel_version=`uname -v`
kernel_release=`uname -r`
processor=`uname -p`
os=`uname -o`
hardware_platform=`uname -i`
echo "machine : $machine , processor: $processor os: $os, kernel_name : $kernel_name"
echo "kernel_release : $kernel_release kernel_version: $kernel_version"
os_version=$(cat /etc/issue)
echo "os_version : $os_version"


