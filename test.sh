#!/bin/bash

RUNS=5

mkdir csvout/q2a
mkdir csvout/q2a/${RUNS}runs

for((i=1;i<=$RUNS;i++))
do

./timer_mem_use 10000 50 > csvout/q2a/${RUNS}runs/run${i}.csv &

done