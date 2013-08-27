#!/bin/bash
# Rough draft of automatic lemmatizer script
# Currently, you have to open up the script file and change the directory of the input directory to your input directory.
# IMPORTANT: To choose where the output files go and what type of file extension they have, you have to edit the config file, which can be found in the lemmatizer folder (configTR.4.0.ExportLemText.xml).
# This script will take POStagged (or non-POStagged) files and lemmatize each text and output a file of the same name, but with ".lem.txt" added to the end.

java -jar /home/mulhod/Dropbox/Docs/Montclair/APLN552/bin/lemmatizer/Textuality.4.0.jar -log2console -config /home/mulhod/Dropbox/Docs/Montclair/APLN552/bin/lemmatizer/configTR.4.0.ExportLemText.xml –f /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2_1/by_artist_dev/tagged/suicide/