#!/usr/bin/python3

import csv

def cal_score(name):
    sum = 0
    for c in name:
        sum += ord(c) - ord('A') + 1

    return sum

table = []
with open('p022_names.txt') as file:
    reader = csv.reader(file)
    for row in reader:
        for col in row:
            table.append(col)

table.sort()
sum = 0
for i in range(len(table)):
    ans = (i + 1) * cal_score(table[i])
#    print(table[i], ans)
    sum += ans

print(sum)

#i = cal_score("COLIN")
#print(i)
