#!/usr/bin/ruby

max = 0

for i in 100 .. 999
	for j in 100 .. 999
		val = i * j

		if val.to_s == val.to_s.reverse and val > max
			max = val
		end
	end
end

puts max
