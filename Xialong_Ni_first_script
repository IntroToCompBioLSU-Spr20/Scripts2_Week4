curl https://raw.githubusercontent.com/IntroToCompBioLSU-Spr20/Scripts2_Week4/master/chiari.summary_statistics.csv > Assignment.txt
wc Assignment.txt
x=249
var1=,1
var2=14
# I'm trying to generalize how to accept any HoT score and number of taxa
tail -n 248 Assignment.txt | grep $var1$ | grep ","$var2"," | awk -F"," '{print $2}'
