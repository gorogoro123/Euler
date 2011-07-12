#!/usr/bin/ruby

max = 0

for x in 100 .. 999
	for x in 100 .. 999
		val = x * y

		if val.to_s == val.to_s.reverse and val > max
			max = val
		end
	end
end

puts max
