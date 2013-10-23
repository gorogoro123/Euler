#!/usr/bin/ruby

index = 0
ary = Array.new()
val = 2

while index != 10001
	div = false
	for i in 2 .. Math.sqrt(val).truncate
		if (val % i) == 0
			div = true
			break
		end
	end

	if div == false
#		print index, " ", val, "\n"
		ary[index] = val
		index += 1
	end

	val += 1

end

puts ary.last
