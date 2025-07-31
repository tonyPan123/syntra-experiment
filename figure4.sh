#!/bin/bash
set -e

base=8888
port1=$((base + 1))
port2=$((base + 2))
port3=$((base + 3))

pushd alfalfa/src/salsify
echo "Experiment for Syntra----------------------------"
echo "LTE_ATT--------"
./syntra-trace-experiment.sh ~/benchmark.y4m $port1 /usr/share/mahimahi/traces/ATT-LTE-driving.up /usr/share/mahimahi/traces/ATT-LTE-driving.down 
sleep 5
echo "TMobile-UMTS--------"
./syntra-trace-experiment.sh ~/benchmark.y4m $port2 /usr/share/mahimahi/traces/TMobile-UMTS-driving.up /usr/share/mahimahi/traces/TMobile-UMTS-driving.down 
sleep 5
echo "Verizon-LTE--------"
./syntra-trace-experiment.sh ~/benchmark.y4m $port3 /usr/share/mahimahi/traces/Verizon-LTE-driving.up /usr/share/mahimahi/traces/Verizon-LTE-driving.down
sleep 5

echo "Experiment for Salsify----------------------------"
echo "LTE_ATT--------"
./salsify-experiment.sh ~/benchmark.y4m $port1 /usr/share/mahimahi/traces/ATT-LTE-driving.up /usr/share/mahimahi/traces/ATT-LTE-driving.down trace
sleep 5
echo "TMobile-UMTS--------"
./salsify-experiment.sh ~/benchmark.y4m $port2 /usr/share/mahimahi/traces/TMobile-UMTS-driving.up /usr/share/mahimahi/traces/TMobile-UMTS-driving.down trace
sleep 5
echo "Verizon-LTE--------"
./salsify-experiment.sh ~/benchmark.y4m $port3 /usr/share/mahimahi/traces/Verizon-LTE-driving.up /usr/share/mahimahi/traces/Verizon-LTE-driving.down trace
sleep 5
popd

echo "Experiment for WebRTC-gcc----------------------------"

echo "Experiment for WebRTC-Vegas----------------------------"