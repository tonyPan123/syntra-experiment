#!/bin/bash
set -e

cp ../modules/third_party/onnxinfer/lib/* .
export LD_LIBRARY_PATH=.
mm-delay 25 bash -c "python3 update_config.py --ip \$MAHIMAHI_BASE --port $1 --sconfig sender.json --rconfig receiver.json"
if [ "$4" = "trace" ]; then
    timeout 1m mm-delay 25 mm-link $2 $3  -- bash -c "export LD_LIBRARY_PATH=.; sleep 3 ; ./peerconnection_serverless sender.json > sender.log 2>&1" &
    sleep 1
    timeout 1m ./peerconnection_serverless receiver.json > receiver.log 2>&1 &
else 
    echo "TO BE DONE"
    timeout 1m mm-delay 25 mm-link $2 $3  -- bash -c "export LD_LIBRARY_PATH=.; sleep 3 ; ./peerconnection_serverless sender.json > sender.log 2>&1" &
    sleep 1
    timeout 1m ./peerconnection_serverless receiver.json > receiver.log 2>&1 &
fi
wait 
python3 example-scripts/e2e_delay.py -r receiver.log
python3 webrtc-quality.py -o testmedia/benchmark-barcode.y4m -n outvideo.y4m
python3 webrtc-rate.py -s sender.log -r receiver.log
