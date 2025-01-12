#!/usr/bin/python3

import itertools
import math
import sys
import csv

def test():
    print(9, math.log10(9))
    print(10, math.log10(10))
    print(99, math.log10(99))
    print(100, math.log10(100))
    sys.exit()

def func(f1, f2):
    return f1 + f2

def main():
    f1 = 1
    f2 = 1
    for i in itertools.count(3, 1):
        f0 = func(f1, f2)
        tmp = math.log10(f0)
        if tmp + 1 <= 1000.0:
            f2 = f1
            f1 = f0
        else:
            print(i, tmp)
            return

if __name__ == '__main__':
#    test()
    main()
