#!/usr/bin/ruby

fn_0 = 0
fn_1 = 1
fn_2 = 0
sum = 0

while fn_2 < 4000000
	fn_2 = fn_0 + fn_1

	if (fn_2 % 2 == 0)
		sum += fn_2
	end

	fn_0 = fn_1
	fn_1 = fn_2
end
 
puts sum
