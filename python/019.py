#!/usr/bin/python3

month = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]
total_sun = 0
total_days = 0


def is_leap_year(year):
	if (year % 4 == 0):
		if (year % 400 != 0) and (year % 100 == 0):
			return False
		else:
			return True
	else:
		return False


for y in range(1900, 2001, 1):
	if is_leap_year(y):
		leap = 1
	else:
		leap = 0

	for m in range(0, 12, 1):
		if (y >= 1901) and (total_days % 7) == 6:
			total_sun += 1

		total_days += month[m]

		if m == 1:
			total_days += 1

print(total_sun)
