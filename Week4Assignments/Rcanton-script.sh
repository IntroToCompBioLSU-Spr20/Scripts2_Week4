#! /bin/bash

# download file

curl https://raw.githubusercontent.com/IntroToCompBioLSU-Spr20/Scripts2_Week4/master/chiari.summary_statistics.csv > step1.txt

# count number of lines and create a variable with this number

wc step1.txt
myVar=249

# change commas for space

sed -i 's/,/ /g' step1.txt

# extract last 248 lines then extract lines with "$1" in last column and then extract lines with "$2" on it 
tail -n 248 step1.txt | grep " $1"$ | grep " $2 " > step5.txt

# save only second column in final file step6.txt

awk '{print $2}' step5.txt > step6.txt
