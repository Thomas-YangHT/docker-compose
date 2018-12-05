#!/bin/bash
nmap localhost -p 2049 | grep "2049/tcp open"
if [ $? -ne 0 ];then
        exit 10
fi
