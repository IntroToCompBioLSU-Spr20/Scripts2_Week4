
#! /bin/bash
# counted number of lines and stored with command line = 247
# took out header by using tail -n command
# used grep command to filter out lines ending in ,1
# used grep command to filter out everything with 14 taxa
# replaced all , with " "
# awk command used to parse text and only keep gene names
# $1 = HoT score
# $2 = taxa
tail -n247 assignment3.txt | grep ','$1$ | grep ','$2',' | sed 's/,/ /g' | awk '{print $2}'
