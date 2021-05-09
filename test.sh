#!/bin/bash

RUNS=35

mkdir csvout/q2a
mkdir csvout/q2a/${RUNS}runs

for((i=1;i<=$RUNS;i++))
do

./timer_mem_use 1000000 10 > csvout/q2a/${RUNS}runs/run${i}.csv &

done
