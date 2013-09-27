#!/bin/bash
#Related regexes for making this type of file:
#1. find "^" and replace with "count=\$\(\(\$count\+\$\(egrep -io '\\b"
#2. find "$" and replace with "\\b' "\$f" \| wc -w\)\)\)"

# Count the # of 2nd/3rd-person (singular/plural) pronouns
for f in /home/mulhollandm2/Project2/by_song/lemmatized/non-suicide/*.txt
do

count=0
count=$(($count+$(egrep -io '\bhe\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bhim\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bhis\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bhimself\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bhisself\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bshe\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bher\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bhers\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bherself\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bit\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bits\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bitself\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bthey\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bthem\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btheir\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btheirs\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bthemselves\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\byou\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\byour\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\byours\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\byourself\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\byourselves\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\byous\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bthou\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bthee\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bthy\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bthine\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bthyself\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bye\b' "$f" | wc -w)))
echo $count

done > /home/mulhollandm2/Project2/by_song/lemmatized/non-suicide/2-3P_TokenCount.csv

# List of files in order of access
for f in /home/mulhollandm2/Project2/by_song/lemmatized/non-suicide/*.txt
do

echo "$f"

done > /home/mulhollandm2/Project2/by_song/lemmatized/non-suicide/fileList.csv
