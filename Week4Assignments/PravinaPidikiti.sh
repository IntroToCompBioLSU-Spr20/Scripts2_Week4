#! /bin/bash
#Copy link to donwload file
# count the lines
wc chiari.summary_satistics.csv
#extract all lines except header
tail -n 248 chiari.summary_satistics.csv
sed /,/ /g' chiari.summary_satistics.csv | grep -w $1 | grep -w $2 | awk '{print $2}'
