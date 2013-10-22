#!/usr/bin/ruby

def cal_triangle_number(n)
	return n * (n + 1) / 2
end

index = 1
triangle_number = cal_triangle_number(index)

while true
	divisors = Hash.new(0)

	tmp = index
	for i in 2 .. index
		while (tmp % i == 0)
			divisors[i] += 1
			tmp = tmp / i
		end
	end

	tmp = index+1
	for i in 2 .. index+1
		while (tmp % i == 0)
			divisors[i] += 1
			tmp = tmp / i
		end
	end

	divisors[2] -= 1
	if divisors[2] == 0
		divisors.delete(2)
	end

	sum = 1
	divisors.each do |key, value|
#		printf("%d %d\n", key, value + 1)
		sum = sum * (value + 1)
	end

#	printf("%d triangle_number=%d divisors=%d\n", index, triangle_number, sum)
#	divisors[1] = 1
#	divisors[triangle_number] = 1
#	p divisors.sort_by{|key,val| key}

	if sum >= 500
		puts triangle_number
		break
	end

	index += 1
	triangle_number = cal_triangle_number(index)
end
