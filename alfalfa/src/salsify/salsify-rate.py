#!/usr/bin/env python3

import sys
import argparse
import numpy as np
import matplotlib.pyplot as plt
import re 

def main(args):
    send_count = 0
    with open(args.s, 'r') as sender_log:
        for line in sender_log:
            match_index = re.search(r'Frame (\d+)', line)
            match = re.search(r'encoding time = ([\d.]+)$', line)
            if match or 'Skipping' in line:
                send_count += 1

    receives_count = 0
    with open(args.r, 'r') as receiver_log:
        for line in receiver_log:
            match_index = re.search(r'Frame: (\d+)', line)
            match = re.search(r'spends ([\d.]+)$', line)
            if match: 
                receives_count += 1

    print('Frame rate:', np.ceil(20 * receives_count / send_count))

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-r', metavar='RECEIVER_LOG',
                        required=True, help='receiver log')
    parser.add_argument('-s', metavar='SENDER_LOG',
                        required=True, help='sender log')
    args = parser.parse_args()

    main(args)