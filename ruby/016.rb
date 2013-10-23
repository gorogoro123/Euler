#!/usr/bin/ruby

pow = 1000

sum = 1
for i in 0 .. pow - 1
	sum = sum * 2
end

ary = sum.to_s.split(//)

sum = 0
ary.each do |val|
	sum += val.to_i
end

puts sum
