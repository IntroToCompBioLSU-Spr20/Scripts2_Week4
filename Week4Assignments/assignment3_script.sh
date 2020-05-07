#! /bin/bash

#$1 = Open file
#$2 = HoT number
#$3 = Taxa number
#$4 = Save file

#count the lines in the file and store it in a variable
lineCount=`cat $1 | wc -l`

#use lineCount to extract all lines except header, search for lines that contain both $HoT and $taxaNumber,
#then use awk to print the gene name of those lines into a new file
tail -n$lineCount $1 | grep $2$ | grep " $3 0." | awk '{print $2}' > $4 
 
#Taxa number is followed by "0." in every case
#HoT number is at the end of the line. $ after the variable denotes this.
