#!/bin/bash
# Rough draft of automatic tokenizer
# Currently, you have to open up the script file (which is in /home/mulhollandm2/bin) and change the directory in the for part to your input directory.
# This script will tokenize each file and output a file of the same name, but with ".tkzd" before the file extension (so it won't actually replace the file).
for f in /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2_1/by_artist_dev/raw/suicide/*.txt
do
	/home/mulhod/apache-opennlp-1.5.2-incubating/bin/opennlp TokenizerME /home/mulhod/apache-opennlp-1.5.2-incubating/models/en-token.bin < "$f" > "${f%}.tkzd.txt"
done