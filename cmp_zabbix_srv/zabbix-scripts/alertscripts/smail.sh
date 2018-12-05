#!/bin/bash
messages=`echo $3 | tr '\r\n' '\n'`
subject=`echo $2 | tr '\r\n' '\n'`
echo "${messages}" | mail -s "${subject}" $1 >>/tmp/sendmail.log 2>&1
