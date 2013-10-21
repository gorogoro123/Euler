#!/usr/bin/ruby

max = 2000000

array = Array.new()
array.push(2)

for i in 3 .. max
	i_sq = Math.sqrt(i).to_i
	for j in 0 .. array.size - 1
		if i % array[j] == 0
			break
		elsif i_sq < array[j]
			array.push(i)
#			puts i
			break
		end
	end
end

sum = 0
for i in 0 .. array.size - 1
	sum += array[i]
end

printf("sum = %d\n", sum )
