#!/usr/bin/ruby

sum_of_square = 0
square_of_sum = 0

for i in 1 .. 100
	sum_of_square += i * i
	square_of_sum += i
end
square_of_sum = square_of_sum * square_of_sum

diff = square_of_sum - sum_of_square

puts diff
