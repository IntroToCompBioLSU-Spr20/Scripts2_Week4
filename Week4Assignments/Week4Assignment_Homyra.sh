#! /bin/bash

#The script depicts the last 248 lines out of 249 lines of the file named assignment 3 and will accept any Hot alignment score at the end of each line and any number of taxa. 

tail -n248 chiari.summary_statistics.csv | grep $1$ | grep $2',0.' | awk -F"," '{print $2}'
