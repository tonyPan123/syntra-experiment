#!/bin/bash
set -e

base=8888
port1=$((base + 1))
port2=$((base + 2))
port3=$((base + 3))

pushd alfalfa/src/salsify
echo "Experiment for Syntra----------------------------"
echo "LTE_ATT--------"
./syntra-trace-experiment.sh $1 $port1 /usr/share/mahimahi/traces/ATT-LTE-driving.up /usr/share/mahimahi/traces/ATT-LTE-driving.down 
sleep 5
echo "TMobile-UMTS--------"
./syntra-trace-experiment.sh $1 $port2 /usr/share/mahimahi/traces/TMobile-UMTS-driving.up /usr/share/mahimahi/traces/TMobile-UMTS-driving.down 
sleep 5
echo "Verizon-LTE--------"
./syntra-trace-experiment.sh $1 $port3 /usr/share/mahimahi/traces/Verizon-LTE-driving.up /usr/share/mahimahi/traces/Verizon-LTE-driving.down
sleep 5

echo "Experiment for Salsify----------------------------"
echo "LTE_ATT--------"
./salsify-experiment.sh $1 $port1 /usr/share/mahimahi/traces/ATT-LTE-driving.up /usr/share/mahimahi/traces/ATT-LTE-driving.down trace
sleep 5
echo "TMobile-UMTS--------"
./salsify-experiment.sh $1 $port2 /usr/share/mahimahi/traces/TMobile-UMTS-driving.up /usr/share/mahimahi/traces/TMobile-UMTS-driving.down trace
sleep 5
echo "Verizon-LTE--------"
./salsify-experiment.sh $1 $port3 /usr/share/mahimahi/traces/Verizon-LTE-driving.up /usr/share/mahimahi/traces/Verizon-LTE-driving.down trace
sleep 5
popd

pushd gcc/playground
echo "Experiment for WebRTC-gcc----------------------------"
echo "LTE_ATT--------"
./gcc-experiment.sh $port1 /usr/share/mahimahi/traces/ATT-LTE-driving.up /usr/share/mahimahi/traces/ATT-LTE-driving.down trace
sleep 5
echo "TMobile-UMTS--------"
./gcc-experiment.sh $port2 /usr/share/mahimahi/traces/TMobile-UMTS-driving.up /usr/share/mahimahi/traces/TMobile-UMTS-driving.down trace
sleep 5
echo "Verizon-LTE--------"
./gcc-experiment.sh $port3 /usr/share/mahimahi/traces/Verizon-LTE-driving.up /usr/share/mahimahi/traces/Verizon-LTE-driving.down trace
sleep 5
popd

pushd vegas/playground
echo "Experiment for WebRTC-Vegas----------------------------"
echo "LTE_ATT--------"
./vegas-experiment.sh $port1 /usr/share/mahimahi/traces/ATT-LTE-driving.up /usr/share/mahimahi/traces/ATT-LTE-driving.down trace
sleep 5
echo "TMobile-UMTS--------"
./vegas-experiment.sh $port2 /usr/share/mahimahi/traces/TMobile-UMTS-driving.up /usr/share/mahimahi/traces/TMobile-UMTS-driving.down trace
sleep 5
echo "Verizon-LTE--------"
./vegas-experiment.sh $port3 /usr/share/mahimahi/traces/Verizon-LTE-driving.up /usr/share/mahimahi/traces/Verizon-LTE-driving.down trace
sleep 5
popd
