#!/bin/bash
set -e

timeout 3m ./receiver > receiver.log 2>&1 &
timeout 3m mm-delay 25 mm-link $1 $2  -- bash -c './fake-webcam ~/benchmark.y4m > sender.log 2>&1 ' &
wait 
python3 syntra-delay.py -r receiver.log
python3 syntra-quality.py -s sender.log
