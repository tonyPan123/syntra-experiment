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
./syntra-experiment.sh $1 $port1 ../../../traces/fixed-link ../../../traces/fixed-link fixed
sleep 5
echo "Varying_Link--------"
./syntra-experiment.sh $1 $port2 ../../../traces/varying-link ../../../traces/varying-link varying
sleep 5
echo "ACK_Aggregation--------"
./syntra-experiment.sh $1 $port3 ../../../traces/real-jitter ../../../traces/fixed-link jitter
sleep 5
echo "Shallow_Buffer--------"
./syntra-experiment.sh $1 $port4 ../../../traces/fixed-link ../../../traces/fixed-link shallow

echo "Experiment for Salsify----------------------------"
echo "Fixed_Link--------"
./salsify-experiment.sh $1 $port1 ../../../traces/fixed-link ../../../traces/fixed-link fixed
sleep 5
echo "Varying_Link--------"
./salsify-experiment.sh $1 $port2 ../../../traces/varying-link ../../../traces/varying-link varying
sleep 5
echo "ACK_Aggregation--------"
./salsify-experiment.sh $1 $port3 ../../../traces/real-jitter ../../../traces/fixed-link jitter
sleep 5
echo "Shallow_Buffer--------"
./salsify-experiment.sh $1 $port4 ../../../traces/fixed-link ../../../traces/real-jitter shallow

echo "Experiment for Salsify (20 fps) ----------------------------"
echo "Fixed_Link--------"
./syntra-20-experiment.sh $1 $port1 ../../../traces/fixed-link ../../../traces/fixed-link fixed
sleep 5
echo "Varying_Link--------"
./syntra-20-experiment.sh $1 $port2 ../../../traces/varying-link ../../../traces/varying-link varying
sleep 5
echo "ACK_Aggregation--------"
./syntra-20-experiment.sh $1 $port3 ../../../traces/real-jitter ../../../traces/fixed-link jitter
sleep 5
popd

pushd gcc/playground
echo "Fixed_Link--------"
./gcc-experiment.sh $port1 ../../traces/fixed-link ../../traces/fixed-link fixed
sleep 5
echo "Varying_Link--------"
./gcc-experiment.sh $port2 ../../traces/varying-link ../../traces/varying-link varying
sleep 5
echo "ACK_Aggregation--------"
./gcc-experiment.sh $port3 ../../traces/real-jitter ../../traces/fixed-link jitter
sleep 5
echo "Shallow_Buffer--------"
./gcc-experiment.sh $port4 ../../traces/fixed-link ../../traces/real-jitter shallow
popd
