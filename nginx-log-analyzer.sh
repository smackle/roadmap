#!/bin/sh


awk '{print $1}' "$1" | sort | uniq -c | sort -rn | head -5 | awk '{print $2 " - " $1 " requests"}'
