#!/bin/bash
# This script will look for .txt files in a directory and for each count the # of tokens and output the counts to a .csv new file.

for f in /home/mulhollandm2/APLN552_Project/test/stemmed/*.txt
do
	egrep -o '\b[0-9a-z]*\b' "$f" | wc -w
done > /home/mulhollandm2/APLN552_Project/test/stemmed/tokensCount.csv