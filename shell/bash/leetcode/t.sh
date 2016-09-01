#!/bin/bash
awk 'BEGIN{FS="\n";}{for(i=1;i<NF;i++){print $i}}' ab.txt
