#!/usr/bin/ruby

max = 1000

ary = Array.new(max+1, "")
ary[1] = "one"
ary[2] = "two"
ary[3] = "three"
ary[4] = "four"
ary[5] = "five"
ary[6] = "six"
ary[7] = "seven"
ary[8] = "eight"
ary[9] = "nine"
ary[10] = "ten"

ary[11] = "eleven"
ary[12] = "twelve"
ary[13] = "thirteen"
ary[14] = "fourteen"
ary[15] = "fifteen"
ary[16] = "sixteen"
ary[17] = "seventeen"
ary[18] = "eighteen"
ary[19] = "nineteen"

ary[20] = "twenty"
ary[30] = "thirty"
ary[40] = "forty"
ary[50] = "fifty"
ary[60] = "sixty"
ary[70] = "seventy"
ary[80] = "eighty"
ary[90] = "ninety"

ary[100] = "one hundred"
ary[200] = "two hundred"
ary[300] = "three hundred"
ary[400] = "four hundred"
ary[500] = "five hundred"
ary[600] = "six hundred"
ary[700] = "seven hundred"
ary[800] = "eight hundred"
ary[900] = "nine hundred"
ary[1000] = "one thousand"


for i in 20 .. 99
	if ary[i].length == 0
		ary[i] = ary[(i / 10) * 10] + " " + ary[i % 10]
	end
end

for i in 100 .. 1000
	if ary[i].length == 0
		ary[i] = ary[(i / 100) * 100] + " and " + ary[i % 100]
	end
end

#ary.each do |value|
#	p value
#end

sum = 0
for i in 1 .. 1000
	sum += ary[i].delete(" ").size
end

puts sum
