                                   File: myHomeworkScript.sh                                                                                
#! /bin/bash
#download file & wc to count lines. extract all lines except header
tail -n 248 chiari.summary_statistics.csv |
grep ,$1$ |
grep ",$2," |
#see notes regarding commas
awk -F ',' '{print $2}' >> commands.txt
