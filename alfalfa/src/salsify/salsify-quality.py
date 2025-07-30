#!/usr/bin/env python3

import sys
import argparse
import numpy as np
import matplotlib.pyplot as plt
import re 
import math 

def partition_array(arr, n):
    return [arr[i:i + n] for i in range(0, len(arr), n)]

def main(args):
    ssims = []
    with open(args.s, 'r') as ssim_log:
        for line in ssim_log:
            match = re.search(r"ssim=([0-9.]+)", line)
            if match: 
                last_number = float(match.group(1))
                ssims.append(last_number)

    ssims = [-10 * math.log10(1 - ssim)for ssim in ssims]

    print('Median per-frame quality (ssim):', np.median(ssims))
    print('P25 per-frame quality (ssim):', np.percentile(ssims, 25))


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-s', metavar='SENDER_LOG',
                        required=True, help='sender log')
    args = parser.parse_args()

    main(args)