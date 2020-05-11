#! /bin/bash

# Downloads the data file and saves it as it's native filename, in this case chiari.summary_statistics.csv
wget https://raw.githubusercontent.com/IntroToCompBioLSU-Spr20/Scripts2_Week4/master/chiari.summary_statistics.csv

# Appends a new line to the end of the file to fix all of the lines not being counted by wc
echo "" >> chiari.summary_statistics.csv

# Counts the lines in the downloaded file and saves this as a variable to be used in subsequent tail command
lineCount=`wc -l < chiari.summary_statistics.csv`

# Subtracts one from the number obtained in the previous step to exclude the header line
lineCount=$((lineCount-1))

# Prints all of the lines in the file except the first, searches these lines for an input HoT score, then searches the resulting lines for an input number of taxa
# Finally, uses awk to print the second column (Gene Name) to a text file
# Since the file is a CSV, we declare "," as the seperator to be used in the awk command
# $1 and $2 represent input values for HoT alignment score and number of taxa, respectively
tail -n $lineCount chiari.summary_statistics.csv | grep ,$1$ | grep ,$2, | awk -F ',' '{print $2 > "geneNames.txt"}'
