#!/bin/bash
for f in /home/mulhollandm2/APLN552_Project/by_song/stemmed/PorterStemmer/non-suicide/*.txt
do

count=0
count=$(($count+$(egrep -io '\badmir\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bador\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\badul\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\baffair\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\baffect\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\baffection\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\baffianc\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\ballegi\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bam\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamatori\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamiabl\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamiti\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bammophil\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamor\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamoret\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamorett\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamoroso\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamour\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bamourett\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bangel\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bappreci\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bardenc\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bardent\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bardor\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\battach\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\battract\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbear\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbeau\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbelov\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbenevol\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbetroth\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbewitch\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbitten\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbloten\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bbrokenheart\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bburn\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcanon\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcaptiv\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcare\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcaress\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcase\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcavalier servent\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcharm\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcherish\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bchoos\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcicisbeo\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bclasp\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcling\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bclose\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcongeni\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcoquett\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcosset\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcourt\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcourtship\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcrazi\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcrush\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcuddl\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bcupid\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdarl\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdear\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdeifi\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdelight\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdendrophil\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdesir\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdevot\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdevoted\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdilect\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdote\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bdraw \b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bembrac\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bemot\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\benamor\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\benchant\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bendear\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bengag\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\benjoy\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\benraptur\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bentertain\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\benthusiasm\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\berot\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\besteem\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bexalt\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfall\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfanci\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfascin\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfavorit\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfeast\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfeel\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfervor\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfidel\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bflame\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bflirt\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfollow\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfond\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfondl\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bfriendship\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bgallant\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bgallantri\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bglorifi\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bglutolatr\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bgoddess\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bhanker\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bharbor\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bheart\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bheartsick\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bhold\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bhold\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bhug\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bidol\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bidolatri\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binclin\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binfatu\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binterest\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\binvolv\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bkiss\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blick\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blike\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blittl\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blong\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blose \b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blovabl\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blove\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blover\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\blust\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmad\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmarri\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmind\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bmyrtl\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bnear\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bneck\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bnemophil\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpandem\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bparamour\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpartial\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpassion\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpedest\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpet\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpieti\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpopular\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpopular \b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpreciou\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bprefer\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpress\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bprize\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bpropiti\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\braptur\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bregard\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brelish\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brespect\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\brever\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bromant\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsapid\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bseduc\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bseduct\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsentiment\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bshine\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsmitten\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsoft\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsooth\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bstori\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bstroke\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsuitor\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bswain\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsweet\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsweetheart\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsympathet\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bsympathi\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btaken\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btake to\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btale\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btast\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btender\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btender \b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btenderli\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bthrive\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btoken\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btreasur\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btrue\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\btryst\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bunfaith\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\buxori\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bvener\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bvenu\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bweak\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bwed\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bwell\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bwild for\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bwoo\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bwooer\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bworld\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bworship\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bworship \b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\byearn\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\byoung man\b' "$f" | wc -w)))
count=$(($count+$(egrep -io '\bzeal\b' "$f" | wc -w)))

echo $count

done > /home/mulhollandm2/APLN552_Project/by_song/stemmed/PorterStemmer/non-suicide/loveTokenCount.csv