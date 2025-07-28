#!/usr/bin/env python3

import sys
import argparse
import numpy as np
import matplotlib.pyplot as plt
import re 
import math 

def main(args):
    ssims = []
    with open(args.s, 'r') as ssim_log:
        for line in ssim_log:
            match = re.search(r'SSIM of ([\d.]+) is ([\d.]+)$', line)
            if match: 
                last_number = float(match.group(2))
                ssims.append(last_number)


    ssims = [-10 * math.log10(1 - ssim)for ssim in ssims]

    print('Median per-frame quality (ssim):', np.mean(ssims))
    print('P25 per-frame quality (ssim):', np.percentile(ssims, 25))




if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-s', metavar='SENDER_LOG',
                        required=True, help='sender log')
    args = parser.parse_args()

    main(args)