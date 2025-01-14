#!/usr/bin/python3

import itertools
import math
import sys
import csv

def sub(size):
    num = 1
    ans = 1
    step = 2
    while num < size * size:
        for i in range(4):
            num += step
            ans += num
#            print(num, ans)
        step += 2

    print(ans)

def main():
#    sub(5)
    sub(1001)

if __name__ == '__main__':
    main()
