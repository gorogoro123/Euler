#!/usr/bin/ruby

max = 1000000
ary = Array.new(max+1, 0)

i_max = 0
cnt_max = 0
for i in 0 .. max
	val = i
	cnt = 0
	while val > 1
		#check stored data
		if val < ary.size and ary[val] > 0
			break
		end

		if (val % 2) == 0
			val = val / 2
		else
			val = 3 * val + 1
		end

		cnt += 1
	end

#	puts cnt

	cnt += ary[val]
	ary[i] = cnt

	if cnt_max < cnt
		i_max = i
		cnt_max = cnt
	end
end

puts i_max, cnt_max
