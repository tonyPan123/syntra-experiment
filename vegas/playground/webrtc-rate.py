#!/usr/bin/env python3

import sys
import argparse
import numpy as np
import cv2
from pyzbar.pyzbar import decode


def main(args):
    read_frames = []
    with open("sender.log", 'r') as sender_log:
        for line in sender_log:
            if 'FRAME READ' in line:
                read_frames.append(int(line.split()[-1]))

    write_frames = []
    with open("receiver.log", 'r') as receiver_log:
        for line in receiver_log:
            if 'FRAME WRITE' in line:
                write_frames.append(int(line.split()[-1]))

    print('Frame rate:', np.ceil(30 * np.clip(len(write_frames) / len(read_frames), 0, 1)))


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-s', metavar='SENDER_LOG',
                        required=True, help='sender log')
    parser.add_argument('-r', metavar='RECEIVER_LOG',
                        required=True, help='receiver log')
    args = parser.parse_args()

    main(args)
