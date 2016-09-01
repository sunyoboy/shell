#!/bin/bash

read -p "Please type :" x
if [[ $x =~ "[0-9]" ]];then
        echo "yes"
else
        echo "no"
fi
