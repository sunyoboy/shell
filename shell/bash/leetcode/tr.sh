#!/bin/bash
awk 'BEGIN{col=NF;row=NR}{for(x=1;x<=NF;x++){matrix[x,NR]=$x;}}END{for(j=1;j<=NF;j++) {for(i=1;i<=NR;i++) {printf "%s ", matrix[j,i]} printf "\n"}}' file.txt
