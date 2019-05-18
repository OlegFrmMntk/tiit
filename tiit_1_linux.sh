#!/bin/bash
if [ -e $1 ]; then v=$(pwd) && cd $1
else echo "Данной папки нет"
fi
cnt=$(ls *.txt | wc -l)
rm report2.txt
let cnt%=2
if [[ $cnt -eq 0 ]]; then ls -ct *.txt >$v/report2.txt
else ls -Sr *.txt >$v/report2.txt
fi