#!/usr/bin/ruby

max = 2000000

ary = Array.new()
ary.push(2)

for i in 3 .. max
	i_sq = Math.sqrt(i).to_i
	for j in 0 .. ary.size - 1
		if (i % ary[j]) == 0
			break
		elsif i_sq < ary[j]
			ary.push(i)
#			puts i
			break
		end
	end
end

sum = 0
for i in 0 .. ary.size - 1
	sum += ary[i]
end

printf("sum = %d\n", sum )
