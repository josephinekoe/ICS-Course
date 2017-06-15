def ask question
	while true
		puts question
		reply = gets.chomp.to_i
		if reply >= 1 && reply <= 3000
			return reply
		end
	end
end
number = ask 'Please enter an integer between 1 and 3000:'
def old_roman_numeral num
	array = [[1000, 'M'],
			 [500, 'D'],
			 [100, 'C'],
			 [50, 'L'],
			 [10, 'X'],
			 [5, 'V'],
			 [1, 'I']]
	output = ''
	array.each do |arr|	 
		output = output+arr[1]*(num/arr[0])
		num = num%arr[0]
	end
	return output
end
puts old_roman_numeral number