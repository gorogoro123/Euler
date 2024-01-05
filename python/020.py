#!/usr/bin/python3

def imp0():
    sum1 = 1
    for i in range(1, 101, 1):
        sum1 *= i
#        print(sum1)

    sum_digit = 0
    while True:
        if sum1 > 0:
            q, mod = divmod(sum1, 10)
            sum1 = q
            sum_digit += mod
        else:
            break

    return sum_digit


def imp1():
    digits = [0] * 200
    digits[0] = 1

    sum_digit = sum(digits)

    for i in range(2, 101, 1):
        for j in range(0, len(digits), 1):
            digits[j] *= i

        for j in range(0, len(digits)-1, 1):
            q, mod = divmod(digits[j], 10)
            digits[j] = mod
            digits[j+1] += q

#        print(digits)

    sum_digit = sum(digits)

    return sum_digit


sum_digit = imp0()
print(sum_digit)


sum_digit = imp1()
print(sum_digit)
