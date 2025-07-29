#!/bin/bash
set -e


echo "Experiment for Syntra----------------------------"
pushd alfalfa/src/salsify
echo "LTE_ATT--------"
./syntra-trace-experiment.sh ~/benchmark.y4m /usr/share/mahimahi/traces/ATT-LTE-driving.up /usr/share/mahimahi/traces/ATT-LTE-driving.down 
echo "TMobile-UMTS--------"
./syntra-trace-experiment.sh ~/benchmark.y4m /usr/share/mahimahi/traces/TMobile-UMTS-driving.up /usr/share/mahimahi/traces/TMobile-UMTS-driving.down 
echo "Verizon-LTE--------"
./syntra-trace-experiment.sh ~/benchmark.y4m /usr/share/mahimahi/traces/Verizon-LTE-driving.up /usr/share/mahimahi/traces/Verizon-LTE-driving.down
popd