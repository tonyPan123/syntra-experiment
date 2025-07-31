#!/usr/bin/env python3

import sys
import argparse
import numpy as np
import matplotlib.pyplot as plt
import re 

def partition_array(arr, n):
    return [arr[i:i + n] for i in range(0, len(arr), n)]

def main(args):
    frame_number = 0
    timestamp = 0
    with open(args.r, 'r') as receiver_log:
        for line in receiver_log:
            match = re.search(r"Frame (\d+).*?latency is (\d+)", line)
            if match: 
                frame_number = int(match.group(1))
    with open(args.s, 'r') as sender_log:
        for line in sender_log:
            match = re.search(r"Timestamp: (\d+)", line)
            if match: 
                timestamp = int(match.group(1))

    print('Frame rate:', np.ceil(30 * np.clip(frame_number / timestamp / 1.5, 0, 1)))

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-r', metavar='RECEIVER_LOG',
                        required=True, help='receiver log')
    parser.add_argument('-s', metavar='SENDER_LOG',
                        required=True, help='sender log')
    args = parser.parse_args()

    main(args)