#!/usr/bin/ruby

i_max = 0
cnt_max = 0
for i in 0 .. 1000000
	val = i
	cnt = 0
	while val > 1
		if (val % 2) == 0
			val = val / 2
		else
			val = 3 * val + 1
		end

		cnt += 1
	end

#	puts cnt

	if cnt_max < cnt
		i_max = i
		cnt_max = cnt
	end
end

puts i_max, cnt_max
