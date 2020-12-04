#!/bin/bash
#rm -rf ./jobfiles/*

d=6
h=23
s=600
echo $d $h $s ; 
DD=$( printf '%02d' $d )
HH=$( printf '%02d' $h )
SSSS=$( printf '%04d' $s )
cat jobfile_template.txt | sed -e "s/1d/$d/"  | sed -e "s/1h/$h/" | sed -e "s/1s/$s/" | sed -e "s/DD/$DD/" | sed -e "s/HH/$HH/" | sed -e "s/SSSS/$SSSS/"> jobfiles/jobfile_${DD}_${HH}_${SSSS}; 

chmod +x -R ./jobfiles/
