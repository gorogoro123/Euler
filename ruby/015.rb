#!/usr/bin/ruby

sizex = 20
sizey = 20
ary = Array.new(sizey+1) { Array.new(sizex+1, 0) }

for i in 0 .. sizey
	for j in 0 .. sizex
		if i - 1 >= 0 and j - 1 >= 0
			ary[i][j] = ary[i-1][j] + ary[i][j-1]
		else
			ary[i][j] = 1
		end
	end
end

#ary.each do |value|
#	p value
#end
puts ary[sizey][sizex]
