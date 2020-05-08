#!
#notes
tail -n 248 week4.txt | grep ,1$ | grep ,14, | awk -F"," '{print $2}'
