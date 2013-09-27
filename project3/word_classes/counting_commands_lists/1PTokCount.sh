#!/bin/bash
#Related regexes for making this type of file:
#1. find "^" and replace with "count=\$\(\(\$count\+\$\(egrep -io '\\b"
#2. find "$" and replace with "\\b' "\$f" \| wc -w\)\)\)"

# Count the # of 1st-person (singular/plural) pronouns
for f in /home/mulhollandm2/Project2/by_song/lemmatized/non-suicide/*.txt
do

count=0
count=$(($count+$(egrep -io '\bi\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bme\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmy\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmine\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmyself\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bwe\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bus\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bour\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bours\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bourselves\b' "$f" | wc -w)))
echo $count

done > /home/mulhollandm2/Project2/by_song/lemmatized/non-suicide/1P_TokenCount.csv

# List of files in order of access
for f in /home/mulhollandm2/Project2/by_song/lemmatized/non-suicide/*.txt
do

echo "$f"

done > /home/mulhollandm2/Project2/by_song/lemmatized/non-suicide/fileList.csv
