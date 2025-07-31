#!/bin/bash
set -e

base=8888
port1=$((base + 1))
port2=$((base + 2))
port3=$((base + 3))
port4=$((base + 4))

echo "Experiment for Syntra----------------------------"
pushd alfalfa/src/salsify
echo "Fixed_Link--------"
./syntra-experiment.sh ~/benchmark.y4m $port1 ../../../traces/fixed-link ../../../traces/fixed-link fixed
sleep 5
echo "Varying_Link--------"
./syntra-experiment.sh ~/benchmark.y4m $port2 ../../../traces/varying-link ../../../traces/varying-link varying
sleep 5
echo "ACK_Aggregation--------"
./syntra-experiment.sh ~/benchmark.y4m $port3 ../../../traces/fixed-link ../../../traces/real-jitter jitter
sleep 5
echo "Shallow_Buffer--------"
./syntra-experiment.sh ~/benchmark.y4m $port4 ../../../traces/fixed-link ../../../traces/fixed-link shallow
popd