#!/usr/bin/python3

import itertools
import math
import sys
import csv

def sub(count, table1, table2):
    if len(table2) >= 1:
        for i in range(len(table2)):
            tmp1 = table1.copy()
            tmp2 = table2.copy()
            tmp1.append(tmp2.pop(i))
            count = sub(count, tmp1, tmp2)
            if count > 1000000:
                break
    else:
        if count == 1000000:
            print(count, table1)
        count += 1

    return count

def sub1(count, table1, table2):
    for count, table in enumerate(itertools.permutations(table2, len(table2))):
        if count == 1000000:
            print(count, table)
            break

def main():
    #table = [ 0, 1, 2 ]
    table = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    sub(0, [], table)


if __name__ == '__main__':
    main()
