#!/usr/bin/ruby

for a in 0 ... 1000
	for b in a + 1 ... 1000
		for c in b + 1 ... 1000
			sum = a + b + c
			if sum > 1000
				break
			elsif (sum == 1000)
				if (a * a + b * b == c * c)
					printf("a = %d, b = %d, c = %d\n", a, b, c);
					printf("abc = %d\n", a * b *  c);
				end
			end
		end
	end
end
