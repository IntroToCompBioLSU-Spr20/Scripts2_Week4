#! /bin/bash

#This script will print a list of genus names from the data in Assignment3.txt based upon the arguents of a variable HoT score
#and a variable taxa number from the results of the variable HoT.

tail -n248 Assignment3.txt | grep $1$ | grep $2',0.' | awk -F "," '{print $2}'
