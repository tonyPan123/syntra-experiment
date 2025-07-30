#!/usr/bin/env python3

import sys
import argparse
import numpy as np
import matplotlib.pyplot as plt
import re 

def partition_array(arr, n):
    return [arr[i:i + n] for i in range(0, len(arr), n)]

def main(args):
    sends= {}
    with open(args.s, 'r') as sender_log:
        for line in sender_log:
            match_index = re.search(r'Frame (\d+)', line)
            match = re.search(r'encoding time = ([\d.]+)$', line)
            if match: 
                last_index = float(match_index.group(1))
                last_number = float(match.group(1))
                sends[last_index] = last_number

    receives= {}
    with open(args.r, 'r') as receiver_log:
        for line in receiver_log:
            match_index = re.search(r'Frame: (\d+)', line)
            match = re.search(r'spends ([\d.]+)$', line)
            if match: 
                last_index = float(match_index.group(1))
                last_number = float(match.group(1))
                receives[last_index] = last_number

    delays = []
    for key, value in receives.items():
        delays.append(receives[key] - sends[key])

    print('Median per-frame delay (ms):', np.median(delays))
    print('P95 per-frame delay (ms):', np.percentile(delays, 95))

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-r', metavar='RECEIVER_LOG',
                        required=True, help='receiver log')
    parser.add_argument('-s', metavar='SENDER_LOG',
                        required=True, help='sender log')
    args = parser.parse_args()

    main(args)