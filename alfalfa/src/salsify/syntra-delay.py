#!/usr/bin/env python3

import sys
import argparse
import numpy as np
import matplotlib.pyplot as plt
import re 

def partition_array(arr, n):
    return [arr[i:i + n] for i in range(0, len(arr), n)]

def main(args):
    delays = []
    with open(args.r, 'r') as receiver_log:
        for line in receiver_log:
            match = re.search(r'latency is ([\d.]+)$', line)
            if match: 
                last_number = float(match.group(1))
                delays.append(last_number)
    print('Frame rate:', np.ceil(len(delays) / (3 * 60)))
    print('Median per-frame delay (ms):', np.median(delays))
    print('P95 per-frame delay (ms):', np.percentile(delays, 95))


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-r', metavar='RECEIVER_LOG',
                        required=True, help='receiver log')
    args = parser.parse_args()

    main(args)