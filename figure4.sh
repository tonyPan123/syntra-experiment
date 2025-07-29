#!/bin/bash
set -e

base=8888
port1=$((base + 1))
port2=$((base + 2))
port2=$((base + 3))

echo "Experiment for Syntra----------------------------"
pushd alfalfa/src/salsify
echo "LTE_ATT--------"
./syntra-trace-experiment.sh ~/benchmark.y4m $port1 /usr/share/mahimahi/traces/ATT-LTE-driving.up /usr/share/mahimahi/traces/ATT-LTE-driving.down 
echo "TMobile-UMTS--------"
./syntra-trace-experiment.sh ~/benchmark.y4m $port2 /usr/share/mahimahi/traces/TMobile-UMTS-driving.up /usr/share/mahimahi/traces/TMobile-UMTS-driving.down 
echo "Verizon-LTE--------"
./syntra-trace-experiment.sh ~/benchmark.y4m $port3 /usr/share/mahimahi/traces/Verizon-LTE-driving.up /usr/share/mahimahi/traces/Verizon-LTE-driving.down
popd