#!/bin/bash
# Do before tokenization since some of the environments with apostrophes will have spaces in them after tokenization.
# Currently, you have to open up the script file (which is in /home/mulhollandm2/bin) and change the directory in each command below to your input directory.
# This script will first turn all files' contents to lower case.

find /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_artist/tokenized/non-suicide/testset_artists/ -type f -name \*.txt -exec sed --in-place=_orig.txt -e 's/\(.*\)/\L\1/g' '{}' \;