#!/bin/bash

#1.delete files in the ./running/
#2. generate commmands.txt using files in the /jobfiles/
#3. use commmands.txt to run jobs

rm -rf ./running/* 
./gen_commands.sh
echo "generate commands.txt"
echo "start to running in parallel"
cat nodefile.txt
parallel --controlmaster --sshdelay 0.1 --sshloginfile nodefile.txt < commands.txt 1>stdout.txt 2>stderr.txt
