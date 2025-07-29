#!/bin/bash
set -e

timeout 10m ./receiver > receiver.log 2>&1 &
timeout 10m mm-delay 25 mm-link $2 $3  -- bash -c "./fake-webcam $1 \$MAHIMAHI_BASE 200 > sender.log 2>&1 " &
wait 
python3 syntra-delay.py -r receiver.log
python3 syntra-quality.py -s sender.log
python3 syntra-rate.py -r receiver.log -s sender.log
