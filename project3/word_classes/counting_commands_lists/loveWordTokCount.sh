#!/bin/bash
#Related regexes for making this type of file:
#1. find "^" and replace with "count=\$\(\(\$count\+\$\(egrep -io '\\b"
#2. find "$" and replace with "\\b' "\$f" \| wc -w\)\)\)"

# Count the # of love words

for f in /home/mulhollandm2/Project2/by_song/lemmatized/non-suicide/*.txt
do

count=0
count=$(($count+$(egrep -io '\badmiration\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\badmire\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\badmirer\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\badorable\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\badoration\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\badore\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\badorer\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\badulate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\badulation\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\baffair\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\baffect\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\baffection\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\baffectionate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\baffiance\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\ballegiance\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamative\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamatory\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamiable\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamity\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bammophilous\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamoret\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamorette\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamoroso\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamorous\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamorousness\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamour\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamourette\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bangel\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bappreciation\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bardency\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bardent\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bardor\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\battachment\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\battract\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\battractive\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\battractiveness\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbear\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbeau\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbeloved\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbenevolence\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbetroth\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbite\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbloten\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbrokenhearted\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bburn\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcanonize\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcaptive\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcare\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcaress\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcase\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcavaliere\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bchoose\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcicisbeo\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bclasp\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcling\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bclose\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcongenial\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcoquette\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcosset\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcourt\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcourtship\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcrazy\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcrush\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcuddle\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcupid\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdarling\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdear\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdeify\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdelight\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdendrophilous\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdesire\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdevote\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdevotedness\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdevotion\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdilection\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdote\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdraw\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bembrace\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bemotion\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\benchantment\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bendear\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bengage\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\benjoyment\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\benrapture\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bentertain\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\benthusiasm\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\berotic\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\besteem\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bexalt\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfall\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfancy\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfavorite\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfeast\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfeel\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfervor\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfidelity\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bflame\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bflirt\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfollower\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfond\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfondle\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfondness\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfor\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfriendship\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bgallant\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bgallantry\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bglorify\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bglutolatrous\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bgoddess\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bhanker\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bharbor\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bheart\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bheartsick\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bhug\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bidol\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bidolatry\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bidolize\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binclination\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binfatuation\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binterest\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binvolvement\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bkiss\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blick\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blittle\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blong\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blose\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blovable\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blovely\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blover\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blust\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmad\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bman\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmarry\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmind\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmyrtle\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bnear\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bneck\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bnemophilous\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpandemic\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bparamour\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpartiality\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpassion\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpassionate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpedestal\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpet\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpiety\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpopularity\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bprecious\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bprefer\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpress\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bprize\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpropitiate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brapture\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brapturous\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bregard\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brelish\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brespect\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brevere\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bromantic\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsapid\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bseduce\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bseductive\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsentiment\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bservente\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bshine\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsmite\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsoft\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsoothe\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bstory\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bstroke\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsuitor\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bswain\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsweet\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsweetheart\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsympathetic\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsympathy\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btale\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btaste\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btenderly\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btenderness\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bthrive\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bto\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btoken\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btreasure\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btrue\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btryst\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bunfaithful\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\buxorious\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bvenerate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bvenus\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bweakness\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bwed\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bwell\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bwild\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bwoo\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bwooer\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bworld\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\byearn\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\byoung\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bzeal\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\battach\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbewitch\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcherish\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\benamor\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\benchant\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bhold\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blike\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpopular\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btake\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btender\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bworship\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcaptivate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcharm\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfascinate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blove\b' "$f" | wc -w)))
echo $count

done > /home/mulhollandm2/Project2/by_song/lemmatized/non-suicide/loveWord_TokenCount.csv

# List of files in order of access
for f in /home/mulhollandm2/Project2/by_song/lemmatized/non-suicide/*.txt
do

echo "$f"

done > /home/mulhollandm2/Project2/by_song/lemmatized/non-suicide/fileList.csv
