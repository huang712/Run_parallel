#!/bin/bash
#rm -rf ./jobfiles/*
for d in 6 ; 
	do for h in {21..23} ; 
		do for s in 600 1800 3000 ; 
			do echo $d $h $s ; 
			DD=$( printf '%02d' $d )
	                HH=$( printf '%02d' $h )
                        SSSS=$( printf '%04d' $s )
			cat jobfile_template.txt | sed -e "s/1d/$d/"  | sed -e "s/1h/$h/" | sed -e "s/1s/$s/" | sed -e "s/DD/$DD/" | sed -e "s/HH/$HH/" | sed -e "s/SSSS/$SSSS/"> jobfiles/jobfile_${DD}_${HH}_${SSSS}; 
		done ; 
	done ; 
done

for d in 7 ; 
	do for h in {0..23} ; 
		do for s in 600 1800 3000 ; 
			do echo $d $h $s ; 
			DD=$( printf '%02d' $d )
	                HH=$( printf '%02d' $h )
                        SSSS=$( printf '%04d' $s )
			cat jobfile_template.txt | sed -e "s/1d/$d/"  | sed -e "s/1h/$h/" | sed -e "s/1s/$s/" | sed -e "s/DD/$DD/" | sed -e "s/HH/$HH/" | sed -e "s/SSSS/$SSSS/"> jobfiles/jobfile_${DD}_${HH}_${SSSS}; 
		done ; 
	done ; 
done

for d in 8 ; 
	do for h in {0..8} ; 
		do for s in 600 1800 3000 ; 
			do echo $d $h $s ; 
			DD=$( printf '%02d' $d )
	                HH=$( printf '%02d' $h )
                        SSSS=$( printf '%04d' $s )
			cat jobfile_template.txt | sed -e "s/1d/$d/"  | sed -e "s/1h/$h/" | sed -e "s/1s/$s/" | sed -e "s/DD/$DD/" | sed -e "s/HH/$HH/" | sed -e "s/SSSS/$SSSS/"> jobfiles/jobfile_${DD}_${HH}_${SSSS}; 
		done ; 
	done ; 
done

chmod +x -R ./jobfiles/
