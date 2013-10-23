#!/usr/bin/ruby

val = 600851475143
#val = 13195
max = Math.sqrt(val).to_i
prime_factor = 1
for i in 2 .. max
	if (val % i) == 0
		val = val / i

		prime_factor = i
	end
end

puts prime_factor
