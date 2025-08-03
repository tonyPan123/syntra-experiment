#!/bin/bash
set -e

base=8888
port1=$((base + 1))
port2=$((base + 2))
port3=$((base + 3))

pushd alfalfa/src/salsify
echo "Experiment for Syntra----------------------------"
echo "LTE_ATT--------"
./syntra-trace-experiment.sh $1 $port1 $2/ATT-LTE-driving.up $2/ATT-LTE-driving.down 
sleep 5
echo "TMobile_UMTS--------"
./syntra-trace-experiment.sh $1 $port2 $2/TMobile-UMTS-driving.up $2/TMobile-UMTS-driving.down 
sleep 5
echo "Verizon_LTE--------"
./syntra-trace-experiment.sh $1 $port3 $2/Verizon-LTE-driving.up $2/Verizon-LTE-driving.down
sleep 5

echo "Experiment for Salsify----------------------------"
echo "LTE_ATT--------"
./salsify-experiment.sh $1 $port1 $2/ATT-LTE-driving.up $2/ATT-LTE-driving.down trace
sleep 5
echo "TMobile_UMTS--------"
./salsify-experiment.sh $1 $port2 $2/TMobile-UMTS-driving.up $2/TMobile-UMTS-driving.down trace
sleep 5
echo "Verizon_LTE--------"
./salsify-experiment.sh $1 $port3 $2/Verizon-LTE-driving.up $2/Verizon-LTE-driving.down trace
sleep 5
popd

pushd gcc/playground
echo "Experiment for WebRTC-gcc----------------------------"
echo "LTE_ATT--------"
./gcc-experiment.sh $port1 $2/ATT-LTE-driving.up $2/ATT-LTE-driving.down trace
sleep 5
echo "TMobile_UMTS--------"
./gcc-experiment.sh $port2 $2/TMobile-UMTS-driving.up $2/TMobile-UMTS-driving.down trace
sleep 5
echo "Verizon_LTE--------"
./gcc-experiment.sh $port3 $2/Verizon-LTE-driving.up $2/Verizon-LTE-driving.down trace
sleep 5
popd

pushd vegas/playground
echo "Experiment for WebRTC-Vegas----------------------------"
echo "LTE_ATT--------"
./vegas-experiment.sh $port1 $2/ATT-LTE-driving.up $2/ATT-LTE-driving.down trace
sleep 5
echo "TMobile_UMTS--------"
./vegas-experiment.sh $port2 $2/TMobile-UMTS-driving.up $2/TMobile-UMTS-driving.down trace
sleep 5
echo "Verizon_LTE--------"
./vegas-experiment.sh $port3 $2/Verizon-LTE-driving.up $2/Verizon-LTE-driving.down trace
sleep 5
popd
