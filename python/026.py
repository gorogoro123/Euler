#!/usr/bin/python3

import itertools
import math
import sys
import csv

def sub(denominator):
    remainder = 1
    table = []

    while True:
        remainder %= denominator
        #print(tmp, remainder, denominator)
        if remainder == 0:
            break
        if remainder in table:
            break

        table.append(remainder)
        remainder *= 10

    return len(table)

def main():
    d = 0
    max = 0
    for i in range(2, 1000):
        tmp = sub(i)
        if tmp > max:
            d = i
            max = tmp

    print("d=", d, ", Reciprocal Cycles=", max)

if __name__ == '__main__':
    main()
