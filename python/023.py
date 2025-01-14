#!/usr/bin/python3

import math
import sys
import csv

import math

def cal_divisor(n):
    res = [ 1 ]
    max = int(math.sqrt(n))
#    max = math.isqrt(n)
    for i in range(2, max + 1):
        if n % i == 0:
            res.append(i)
            if i * i != n:
                res.append(n // i)

    res.sort()

    return res

def main():
    limit = 28123
    excess_sum = []
    for i in range(2, limit + 1):
        res = cal_divisor(i)
        sum_divisor = sum(res)
#        print(sum_divisor)
        if i > 0 and i < sum_divisor:
            excess_sum.append(i)
#            print(i)

    execess_numbers = [0] * (limit + 1)
    for i in range(0, len(excess_sum)):
#           print(i, excess_sum[i])
        for j in range(i, len(excess_sum)):
            index = excess_sum[i] + excess_sum[j]
            if index <= limit:
                execess_numbers[index] = 1
            else:
                break
    ans = 0
    for i in range(len(execess_numbers)):
        if execess_numbers[i] == 0:
            ans += i

    print(ans)

if __name__ == '__main__':
    main()
