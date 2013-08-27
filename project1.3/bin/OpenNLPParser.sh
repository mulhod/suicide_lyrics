#!/bin/bash
# Rough draft of automatic parser
# Currently, you have to open up the script file (which is in /home/mulhollandm2/bin) and change the directory in the for part to your input directory.
# This script will parse each sentence in each text and output a file of the same name, but with "parsed" added to the end.
for f in /home/mulhollandm2/APLN552_Project/by_artist/parsed/non-suicide/*.txt
do
	/home/mulhollandm2/opennlp-tools-1.5.0/bin/opennlp Parser /home/mulhollandm2/opennlp-tools-1.5.0/models/en-parser.bin /home/mulhollandm2/opennlp-tools-1.5.0/models/en-parser-chunking.bin < "$f" > "${f%}.parsed.txt"
done