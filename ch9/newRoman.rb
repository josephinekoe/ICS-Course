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
def roman_numeral num
	array = [[3, 'M', 'V'],
			 [2, 'C', 'D'],
			 [1, 'X', 'L'],
			 [0, 'I', 'V']]
	output = array[0][1]*(num/(10**array[0][0]))
	num = num%(10**array[0][0])
	counter = 1
	while counter < array.length
		digit = num/(10**array[counter][0])
		if digit == 9
			output = output + array[counter][1] + array[counter-1][1]
		elsif digit == 4
			output = output + array[counter][1] + array[counter][2]
		else
			output = output + array[counter][2]*(digit/5) + array[counter][1]*(digit%5)
		end
		num = num%(10**array[counter][0])
		counter = counter + 1
	end
	return output
end
puts roman_numeral number