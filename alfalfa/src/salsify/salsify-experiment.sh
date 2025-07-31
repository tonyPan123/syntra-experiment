#!/bin/bash
set -e

if [ "$5" = "trace" ]; then
  timeout 10m ./salsify-receiver $2 1280 720 > receiver.log 2>&1 &
  sleep 1
  timeout 10m mm-delay 25 mm-link $3 $4  -- bash -c "./salsify-sender --file $1 \$MAHIMAHI_BASE $2 1337 > sender.log 2>&1 "  &
else
  timeout 3m ./salsify-receiver $2 1280 720 > receiver.log 2>&1 &
  sleep 1
  if [ "$5" = "shallow" ]; then
    timeout 3m mm-delay 25 mm-link $3 $4  --uplink-queue=droptail --uplink-queue-args="bytes=10500" -- bash -c "./salsify-sender --file $1 \$MAHIMAHI_BASE $2 1337 > sender.log 2>&1 "  &
  else 
    timeout 3m mm-delay 25 mm-link $3 $4  -- bash -c "./salsify-sender --file $1 \$MAHIMAHI_BASE $2 1337 > sender.log 2>&1 "  &
  fi
fi
wait 
python3 salsify-delay.py -r receiver.log -s sender.log
python3 salsify-quality.py -s sender.log
python3 salsify-rate.py -r receiver.log -s sender.log
