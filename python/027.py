#!/usr/bin/python3

import itertools
import math
import sys
import csv
import sympy

def sub():
    max = [0, 0, 0]
    for b in range(-1000, 1001):
        # 0 * 0 + a * 0 + b = b, b is prime number 
        if not sympy.isprime(b):
            continue

        for a in range(-999, 1000):
            allprime = 0
            for n in range(0, 80):
                ans = n * n + a * n + b
                if ans > 0 and sympy.isprime(ans):
                    allprime += 1
                else:
                    break

            if allprime > max[0]:
                max = [allprime, a, b]

    print("[max, a, b]", max)
    print("a*b", max[1] * max[2])

def main():
    sub()

if __name__ == '__main__':
    main()
