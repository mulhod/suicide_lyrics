#!/bin/bash
# Usage: ./count_words.sh word-list-file dir-containing-the-input-files

# Won't print this in the first row since it's not included in the read-to command.
# Have to figure out a way around this.
echo -e "\t$1"

for f in /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_song_test/tokenized/non-suicide/*.txt # for input file
do
  
    python count_words.py $1 $f
    
done > /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/test.csv