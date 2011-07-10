#!/usr/bin/ruby

value = 1

for i in 1 .. 20
	m = value
	n = i

	#Euclidean algorithm
	while n != 0
		tmp = m % n

		m = n
		n = tmp
	end

	value = value * i / m
end

puts value
