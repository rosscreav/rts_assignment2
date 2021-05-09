#!/bin/bash

RUNS=35

mkdir csvout/q2a3
mkdir csvout/q2a3/${RUNS}runs

for((i=1;i<=$RUNS;i++))
do

./timer_mem_use 1000000 10 > csvout/q2a3/${RUNS}runs/run${i}.csv &

done

vmstat 1 200 > csvout/q2a3/${RUNS}runs.txt &
