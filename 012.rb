#!/usr/bin/ruby

def cal_triangle_number(n)
	return n * (n + 1) / 2
end

index = 1
triangle_number = cal_triangle_number(index)

while true
	prime_number = Hash.new(0)

	tmp = index
	for i in 2 .. index
		while (tmp % i == 0)
			prime_number[i] += 1
			tmp = tmp / i
		end
	end

	tmp = index+1
	for i in 2 .. index+1
		while (tmp % i == 0)
			prime_number[i] += 1
			tmp = tmp / i
		end
	end

	prime_number[2] -= 1
	if prime_number[2] == 0
		prime_number.delete(2)
	end

	sum = 1
	prime_number.each do |key, value|
#		printf("%d %d\n", key, value + 1)
		sum = sum * (value + 1)
	end

#	printf("%d triangle_number=%d divisors=%d\n", index, triangle_number, sum)
#	prime_number[1] = 1
#	prime_number[triangle_number] = 1
#	p prime_number.sort_by{|key,val| key}

	if sum >= 500
		puts triangle_number
		break
	end

	index += 1
	triangle_number = cal_triangle_number(index)
end
