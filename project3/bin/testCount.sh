#!/bin/bash
#Related regexes for making this type of file:
#1. find "^" and replace with "count=\$\(\(\$count\+\$\(egrep -io '\\b"
#2. find "$" and replace with "\\b' "\$f" \| wc -w\)\)\)"

# Count the # of tokens
for f in /home/mulhollandm2/APLN552_Project/test/stemmed/*.txt
do

count=0
count=$(($count+$(egrep -io '\bbe\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brealli\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bwant\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\banyth\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bhors\b' "$f" | wc -w)))
echo $count

done > /home/mulhollandm2/APLN552_Project/test/stemmed/negativeWordsCount.csv