#!/bin/bash
for f in /home/mulhollandm2/APLN552_Project/by_song/stemmed/PorterStemmer/non-suicide/*.txt
do

count=0
count=$(($count+$(egrep -io '\bagoni\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\basphyxia\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bawai\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbed\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbereav\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbook\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbreak\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbreath\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbucket\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcareer\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bceas\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bclose\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcoil\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdai\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdead\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdeadli\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdeath\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdecai\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdeceas\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdefunct\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdemis\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdepart\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdepartur\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdie\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdiseas\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdissolut\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdoom\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdoornail\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdoorpost\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdrop\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdust\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdy\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bebb\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bend\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\betern\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\beuthanasia\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bexanim\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bexpir\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bextinct\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfail\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfall\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bgasp\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bgive\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bgo\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bgone\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bgrave\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bhand\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bhang\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bher\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bhippocrat\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binanim\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bjaw\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bkick\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blai\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blament\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blast\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blast \b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blifeless\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bloss\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmorbid\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmoribund\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmorient\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmortal\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmorti\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmortuari\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bnatur\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bnecrolog\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bno more\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bobit\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bobituari\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpai\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpass\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bperish\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpop\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bquietu\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brattl\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\breleas\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brelinquish\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bresign\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brest\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brun\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bseal\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bshade\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsink\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsleep\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bstillborn\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsuffoc\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsurrend\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btaken\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bterror\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bturn\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\buntim\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\buntimel\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bvallei\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bviolent\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bwarrant\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bwatch\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\byield\b' "$f" | wc -w)))

echo $count

done > /home/mulhollandm2/APLN552_Project/by_song/stemmed/PorterStemmer/non-suicide/deathTokenCount.csv
