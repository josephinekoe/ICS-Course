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
	counter = 0
	while counter < array.length-1 && num > 0
		if counter+1 < array.length && num + 10**array[counter+1][0] >= 10**array[counter][0]
			if counter+2 < array.length && num + 10**array[counter+2][0] >= 10**array[counter][0]
				if counter+3 < array.length && num + 10**array[counter+3][0] >= 10**array[counter][0]
					output = output + array[counter+3][1] + array[counter][1]
					counter = counter + 3
				else
					output = output + array[counter+2][1] + array[counter][1]
					counter = counter + 2
				end
			else
				output = output + array[counter+1][1] + array[counter][1]
				counter = counter + 1
			end
		else
			if (num%(5*10**array[counter+1][0]))/(10**array[counter+1][0]) == 4
				output = output+array[counter+1][1]+array[counter+1][2]
			else
				output = output + array[counter+1][2]*(num/(5*10**array[counter+1][0])) + array[counter+1][1]*((num%(5*10**array[counter+1][0]))/(10**array[counter+1][0]))
			end
			counter = counter + 1
		end
		num = num%(10**array[counter][0])
	end
	return output
end
puts roman_numeral number