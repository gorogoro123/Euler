#!/usr/bin/python3

def cal_divisor(n):
    res = []
    max = n
    for i in range(1, n):
        if n % i == 0:
            res.append(i)

    return res

sum_divisor = list(range(10000))
for i in sum_divisor:
    res = cal_divisor(i)
    sum_divisor[i] = sum(res)
#    print(i, res, sum_factor[i])

sum = 0
for i in range(1, len(sum_divisor)):
    if sum_divisor[i] < len(sum_divisor):
        if i != sum_divisor[i] and i == sum_divisor[sum_divisor[i]]:
#            print(i, sum_divisor[i], sum_divisor[sum_divisor[i]])
            sum += i

print(sum)
