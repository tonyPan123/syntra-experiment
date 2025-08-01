#!/bin/bash
set -e

mm-delay 25 bash -c "python3 update_config.py --ip \$MAHIMAHI_BASE --port $1 --sconfig sender.json --rconfig receiver.json"
if [ "$4" = "trace" ]; then
    timeout 10m mm-delay 25 mm-link $2 $3  -- bash -c "sleep 3 ; ./peerconnection_gcc sender.json > sender.log 2>&1" &
    sleep 1
    timeout 10m ./peerconnection_gcc receiver.json > receiver.log 2>&1 &
else 
    if [ "$4" = "shallow" ]; then
        timeout 3m mm-delay 25 mm-link $2 $3 --uplink-queue=droptail --uplink-queue-args="bytes=10500"  -- bash -c "sleep 3 ; ./peerconnection_gcc sender.json > sender.log 2>&1" &
    else 
        timeout 3m mm-delay 25 mm-link $2 $3  -- bash -c "sleep 3 ; ./peerconnection_gcc sender.json > sender.log 2>&1" &
    fi
    sleep 1
    timeout 3m ./peerconnection_gcc receiver.json > receiver.log 2>&1 &
fi
wait 
python3 example-scripts/e2e_delay.py -r receiver.log
python3 webrtc-quality.py -o testmedia/benchmark-barcode.y4m -n outvideo.y4m
python3 webrtc-rate.py -s sender.log -r receiver.log
