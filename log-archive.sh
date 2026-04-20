#!/bin/sh

cd /home/smack
tar -czvf "logs_archive_$(date +%Y%m%d_%H%M%S).tar.gz" "$1"
sleep 5
rm -rf $1/*
