#!/bin/sh

echo "Top 5 IP addresses with the most requests: \n"
awk '{print $1}' "$1" | sort | uniq -c | sort -rn | head -5 | awk '{print $2 " - " $1 " requests"}'

echo "Top 5 most requested paths: \n"
awk '{print $7}' ../nginx-access.log | sort | uniq -c | sort -rn | head -5 | awk '{print $2 " - " $1 " requests"}'

echo "Top 5 response status codes: \n"
awk '{print $9}' ../nginx-access.log | sort | uniq -c | sort -rn | head -5 | awk '{print $2 " - " $1 " requests"}'

echo "Top 5 user agents: \n"
awk -F'"' '{print $6}' ../nginx-access.log | sort | uniq -c | sort -rn | head -5 | awk '{count=$1; $1=""; print $0 " - " count " requests"}'
