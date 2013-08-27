#!/bin/bash
# Rough draft of automatic tagger
# Currently, you have to open up the script file (which is in /home/mulhollandm2/bin) and change the directory in the for part to your input directory.
# This script will tag each text for POS and output a file of the same name, but with "tagged" added to the end.
for f in /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2_1/by_artist_dev/tagged/suicide/*.txt
do
	/home/mulhod/apache-opennlp-1.5.2-incubating/bin/opennlp POSTagger /home/mulhod/apache-opennlp-1.5.2-incubating/models/en-pos-maxent.bin < "$f" > "${f%}.POStagged.txt"
done