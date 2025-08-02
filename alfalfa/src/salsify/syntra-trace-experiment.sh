#!/bin/bash
set -e

timeout 10m ./receiver $2 > receiver.log 2>&1 &
sleep 1
timeout 10m mm-delay 25 mm-link $3 $4  -- bash -c "./fake-webcam $1 \$MAHIMAHI_BASE $2 200 33 > sender.log 2>&1 "  &
wait 
python3 syntra-delay.py -r receiver.log
python3 syntra-quality.py -s sender.log
python3 syntra-rate.py -r receiver.log -s sender.log
