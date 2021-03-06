#!/bin/bash
#Related regexes for making this type of file:
#1. find "^" and replace with "count=\$\(\(\$count\+\$\(egrep -io '\\b"
#2. find "$" and replace with "\\b' "\$f" \| wc -w\)\)\)"

# Count the # of action verb tokens
for f in /home/mulhollandm2/Project2/by_song/lemmatized/non-suicide/*.txt
do

count=0
count=$(($count+$(egrep -io '\baccelerate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\baccomplish\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bachieve\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bacquire\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bactivate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\badapt\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\badjust\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\badminister\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\badvise\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\ballocate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\banalyze\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bannotate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\banticipate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bapply\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bappraise\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\barrange\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\barticulate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bassemble\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bassess\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bassign\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\battain\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bauthor\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbalance\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbrief\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbudget\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcalculate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcatalogue\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcategorize\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bchair\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bchange\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bchannel\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bchart\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bclarify\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcoach\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcode\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcollaborate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcollect\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcommunicate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcompare\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcompete\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcompile\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcomplete\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcompose\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcompute\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bconceive\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bconduct\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bconfront\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bconsolidate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bconstruct\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcontact\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcontinue\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcontract\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bconvene\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcoordinate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcorrespond\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcounsel\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcreate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcritique\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdefine\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdelegate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdeliver\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdemonstrate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bderive\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdesign\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdetect\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdetermine\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdevelop\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdevise\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdiagnose\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdirect\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdiscover\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdispense\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdisplay\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdistribute\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdraft\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdramatize\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bearn\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bedit\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\beducate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\beffect\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\belicit\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bemploy\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bencourage\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bendure\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\benlist\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bentertain\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bestablish\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bestimate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bevaluate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bexamine\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bexchange\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bexecute\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bexercise\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bexhibit\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bexpand\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bexpedite\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bexperiment\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bexplain\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bexplore\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfacilitate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfinance\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfocus\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bforecast\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bformulate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfoster\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bgroup\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bguide\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bidentify\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\billustrate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bimplement\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bimpose\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bimprove\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bincrease\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binfluence\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binform\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binitiate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binquire\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binspect\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binstall\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binstill\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binstitute\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binstruct\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binsure\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binterpret\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bintervene\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binterview\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bintroduce\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binvent\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binventory\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binvestigate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bjudge\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blecture\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blisten\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blocate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmaintain\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmanage\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmarket\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmaster\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmeasure\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmediate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmodel\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmodify\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmold\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmonitor\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmotivate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bnegotiate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bobserve\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bobtain\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\boperate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\borganize\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\boutline\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\boversee\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bparticipate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bperceive\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bperform\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpersuade\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bplan\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpredict\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bprepare\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bprescribe\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpresent\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpreside\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bprocess\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bproduce\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bprogramme\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpromote\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bprotect\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bprovide\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpublicize\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpublish\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpurchase\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bquestion\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brecommend\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brecord\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brecruit\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\breduce\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bregulate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\breinforce\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brender\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brepair\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\breport\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brepresent\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\breproduce\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bresearch\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bresolve\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brespond\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brestore\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bretain\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bretrieve\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\breview\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brevise\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brewrite\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brout\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bschedule\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsearch\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bseek\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bselect\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bserve\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bservice\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bshape\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bshare\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsimplify\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsolicit\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsolve\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bspecify\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bstimulate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bstudy\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsucceed\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsuggest\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsummarize\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsupervise\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsupport\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsurvey\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsynthesize\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsystematize\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btarget\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bteach\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btest\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btrain\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btranslate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btutor\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bupdate\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\butilize\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bverify\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bvisualize\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bwrite\b' "$f" | wc -w)))
echo $count

done > /home/mulhollandm2/Project2/by_song/lemmatized/non-suicide/actionVerb_TokenCount.csv

# List of files in order of access
for f in /home/mulhollandm2/Project2/by_song/lemmatized/non-suicide/*.txt
do

echo "$f"

done > /home/mulhollandm2/Project2/by_song/lemmatized/non-suicide/fileList.csv
