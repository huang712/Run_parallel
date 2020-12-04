#!/bin/bash

#Use files in the jobfile to generate commands 
#in order to continue running the rest of jobs

rm -f commands.txt
path="/scratch/andoria/a/huang712/Run_parallel/Michael/"
dir="./jobfiles"

for f in "$dir"/*; do
  DD=${f:19:2}
  HH=${f:22:2}
  SSSS=${f:25:4}
  echo $DD $HH $SSSS
  stdout="${path}stdout/stdout201810_${DD}_${HH}_${SSSS}.txt"
  stderr="${path}stderr/stderr201810_${DD}_${HH}_${SSSS}.txt"

  echo "bash -l ${path}jobfiles/jobfile_${DD}_${HH}_${SSSS} 1>${stdout} 2>${stderr}">>commands.txt		
done

n_jobs=`ls -l ./jobfiles |grep "^-"|wc -l`
echo "${n_jobs} jobs in total"


