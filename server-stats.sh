#!/bin/bash

echo "-----server stats--------"

echo "-----CPU USAGE-----"
top -bn1 | grep Cpu | awk '{print "CPU Used: "$2}' 

echo "-------------RAM USAGE--------------"
free -h | awk '/Mem:/ {print "Used: "$3 " Free: "$4 " Free %: "$4*100/$2}'

echo "-------------DISK USAGE---------------"
df -h | grep E: | awk '{print "Disk Used: "$3" Disk Avail: "$4" Used %: "$5" Avail %: "100-$5}'

echo "--------TOP 5 Processes by CPU Usage---------------"
ps aux --sort=-%cpu | awk ' {print $2" " $3" " $11}' | head -5

echo "--------TOP 5 Processes by Memory Usage---------------"
ps aux --sort=-%mem| awk ' {print $2" " $4" " $11}' | head -5
