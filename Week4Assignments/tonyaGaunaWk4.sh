#! /bin/bash
# $1=Filename
# $2=HoT number
# $3=Taxa
#Count the lines and store it in a variable
linecount=`cat $1 | wc -l`
tail -n$linecount $1 | grep $2$ | grep $3',0.' | awk -F "," '{print $2}'
# Taxa number is followed by ", 0." in every line.
# HoT number is at the end of the line and the $ reflects this.
