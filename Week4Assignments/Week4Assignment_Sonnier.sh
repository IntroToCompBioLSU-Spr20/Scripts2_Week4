#!  /bin/bash
$1=HoT
$2=taxa
# save data using curl command
curl https://raw.githubusercontent.com/IntroToCompBioLSU-Spr20/Scripts2_Week4/master/chiari.summary_statistics.$
# find and replace all commas with spaces (end of line) to a backup file
sed -i "_backup" 's/,/ /g' Week4HW.txt
# print line number for file, assign a variable and echo line count
wc Week4HW.txt
lines=`wc -l Week4HW.txt|awk '{print $1}'`
echo $lines
# extract line numbers 3 through 248 and pipe into text file
sed -n '3,248 p' Work4.txt >> Kynnedi.txt
# find argument 1 and print the 2nd column for argument 2 in a new file
grep " 1$"| grep -w "2$"| awk '{print $2}' > ChiGenes.txt
