#! /bin/bash

#extract all but header
tail -n 248 chiari.summary_statistics.csv |
#grep lines with HoT score of 1; pulls lines that end in 1
grep ,$1$ |
#grep lines with 14 taxa
grep ",$2," |
#extract and save gene names (2nd column)
awk -F ',' '{print $2}' >> data_2.txt
