#!/bin/bash

n_unfinished=`ls -l ./jobfiles |grep "^-"|wc -l`
n_running=`ls -l ./running |grep "^-"|wc -l`
n_finished=`ls -l ./finished |grep "^-"|wc -l`
n_data=`ls -l /scratch/andoria/a/huang712/VAM_Michael/Results/Experiment_test/output |grep "^-"|wc -l`

n_total=`expr $n_unfinished + $n_finished`
n_waiting=`expr $n_unfinished - $n_running`

echo "${n_total} jobs in total"
echo "${n_waiting} jobs are waiting"
echo "${n_running} jobs are running"
echo "${n_finished} jobs are finished"
echo "${n_data} data files in the data folder"