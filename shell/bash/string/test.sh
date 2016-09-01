#!/bin/bash
i=2
if [[ $i =~ ^[0-9]+$ ]] && echo 1; then
    echo $i
fi
