#!/bin/bash
# Rough draft of Porter Stemmer script
# Currently, you have to open up the script file (which is in /home/mulhollandm2/bin) and change the directory in the for part to your input directory.
# This script will stem each word in each text and output a file of the same name, but with "stemmed" added to the end.

for f in /home/mulhollandm2/APLN552_Project/by_song/stemmed/PorterStemmer/suicide/*.txt
do
	/opt/PorterStemmer/porterstemmer "$f" > "${f%}.stemmed.txt"
done