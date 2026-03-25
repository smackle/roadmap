#!/bin/bash

echo "-----server stats--------"

echo "-----CPU USAGE-----"
top -bn1 | grep Cpu | awk '{print "CPU Used: "$2}' 

echo "-------------RAM USAGE--------------"
free -h | awk '/Mem:/ {print "Used: "$3 " Free: "$4}'
