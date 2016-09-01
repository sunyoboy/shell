#!/bin/bash
line='abc'
echo "$line"
if [ $line =~ "a*" ]; then
    echo "$line"
fi
