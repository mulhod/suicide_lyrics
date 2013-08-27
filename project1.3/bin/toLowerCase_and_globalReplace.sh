#!/bin/bash
# Do before tokenization since some of the environments with apostrophes will have spaces in them after tokenization.
# Currently, you have to open up the script file (which is in /home/mulhollandm2/bin) and change the directory in each command below to your input directory.
# This script will first turn all files' contents to lower case and then find/replace the words in the expression(s) below, outputting files of the same name, thus replacing the file.

# toLowerCase part
find /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_artist/tokenized/suicide -type f -name \*.txt -exec sed --in-place=_orig.txt -e 's/\(.*\)/\L\1/g' '{}' \;

# globalReplace part
grep -lr -e 'going to' * /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_artist/tokenized/suicide | xargs sed -i 's/gonna/going to/g'
grep -lr -e 'wanna' * /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_artist/tokenized/suicide | xargs sed -i 's/wanna/want to/g'
grep -lr -e 'gonna' * /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_artist/tokenized/suicide | xargs sed -i 's/gotta/got to/g'
grep -lr -e 'gonna' * /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_artist/tokenized/suicide | xargs sed -i 's/lotta/lot of/g'
grep -lr -e 'oughta' * /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_artist/tokenized/suicide | xargs sed -i 's/oughta/ought to/g'
grep -lr -e 'musta' * /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_artist/tokenized/suicide | xargs sed -i "s/musta/must 've/g"
grep -lr -e 'oulda' * /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_artist/tokenized/suicide | xargs sed -i "s/oulda/ould 've/g"
grep -lr -e "ain't" * /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_artist/tokenized/suicide | xargs sed -i "s/ain't/be not/g"
grep -lr -e "'cause" * /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_artist/tokenized/suicide | xargs sed -i "s/'cause/because/g"
grep -lr -e "'cuz" * /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_artist/tokenized/suicide | xargs sed -i "s/'cuz/because/g"
grep -lr -e 'cuz' * /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_artist/tokenized/suicide | xargs sed -i "s/cuz/because/g"
grep -lr -e "'neath" * /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_artist/tokenized/suicide | xargs sed -i "s/'neath/beneath/g"
grep -lr -e "'round" * /home/mulhod/Dropbox/Docs/Montclair/APLN552/Project2/by_artist/tokenized/suicide | xargs sed -i "s/'round/round/g"