#!/bin/bash
RUNS=50
mkdir csvout/q2a
mkdir csvout/q2a/${RUNS}runs
for (( i = 1; i <= $RUNS; i++ ))
do
./a.out 2000000 50 > csvout/q2a/${RUNS}runs/run${i}.csv &
done
