#!/bin/bash
nmap localhost -p 80 | grep "80/tcp open"
if [ $? -ne 0 ];then
        exit 10
fi
