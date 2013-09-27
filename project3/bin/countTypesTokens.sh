#!/bin/bash
# This script will look for .txt files in a directory and for each count the # of tokens and types and output the counts to a .csv new file. It will also output a list of files in the order in which they were accessed by the for loop, for clarification purposes.

# Count the # of tokens
for f in /home/mulhollandm2/APLN552_Project/by_song/stemmed/PorterStemmer/suicide/*.txt
do
	egrep -o '\b[0-9a-z]*\b' "$f" | wc -w
done > /home/mulhollandm2/APLN552_Project/by_song/stemmed/PorterStemmer/suicide/tokensCount.csv

# Count the # of types
for f in /home/mulhollandm2/APLN552_Project/by_song/stemmed/PorterStemmer/suicide/*.txt
do
  egrep -o '\b[0-9a-z]*\b' "$f" | sort | uniq -c | sort -n | wc -l
done > /home/mulhollandm2/APLN552_Project/by_song/stemmed/PorterStemmer/suicide/typesCount.csv

# List of files in order of access
for f in /home/mulhollandm2/APLN552_Project/by_song/stemmed/PorterStemmer/suicide/*.txt
do
  echo "$f"
done > /home/mulhollandm2/APLN552_Project/by_song/stemmed/PorterStemmer/suicide/fileList.csv