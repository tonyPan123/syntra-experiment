#!/bin/bash
set -e

timeout 3m ./receiver $2 > receiver.log 2>&1 &
if [ "$5" = "shallow" ]; then
    echo "Shallow Buffer Experiment"
    timeout 3m mm-delay 25 mm-link $3 $4  -- bash -c "./fake-webcam $1 \$MAHIMAHI_BASE $2 200 > sender.log 2>&1 " --uplink-queue=droptail --uplink-queue-args="bytes=10500" &
else
    if [ "$5" = "jitter" ]; then
        timeout 3m mm-delay 25 mm-link $3 $4  -- bash -c "./fake-webcam $1 \$MAHIMAHI_BASE $2 20 > sender.log 2>&1 " &
    else
       timeout 3m mm-delay 25 mm-link $3 $4  -- bash -c "./fake-webcam $1 \$MAHIMAHI_BASE $2 200 > sender.log 2>&1 " &
    fi
fi
wait 
python3 syntra-delay.py -r receiver.log
python3 syntra-quality.py -s sender.log
python3 syntra-rate.py -r receiver.log -s sender.log
