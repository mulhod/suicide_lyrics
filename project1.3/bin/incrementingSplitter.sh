#!/bin/bash
#The command will look for the artist file in the second directory and output the song files to the first.
#NOTE: if "album-file.txt" containing some unusual characters, you will get an error most likely. Try to surround the full path-name with single quotes. (It worked with "&".)

awk '/#/{g++} { print $0 > "/home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_song/lemmatized/non-suicide/testset_artists/ben_folds.lem."g + 1".txt"}' /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_artist/lemmatized/non-suicide/testset_artists/ben_folds.txt.tkzd.txt.POStagged.txt.lem.txt