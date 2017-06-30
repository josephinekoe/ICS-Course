def searchInARow string, char
	counter = 0
	num = 0
	while counter < string.length
		if string[counter] == char
			num = num + 1
			counter = counter+1
		else
			counter = string.length
		end
	end
	return num
end
def cut string, index
	return string[index..string.length-1]
end
def errorMessage
	puts "That is not a valid roman numeral."
	exit
end
puts "Please type a number in roman numerals that less than 4000."
num = gets.chomp
array = [[3, 'M', '?'],
		 [2, 'C', 'D'],
		 [1, 'X', 'L'],
		 [0, 'I', 'V']]
count1 = searchInARow(num, array[0][1])
num = cut num, count1
value = count1*(10**array[0][0])
counter = 1
while counter < array.length
	count5 = searchInARow(num, array[counter][2])
	if count5 > 1
		errorMessage
	end
	num = cut num, count5
	value = value + count5*5*(10**array[counter][0])
	count1 = searchInARow(num, array[counter][1])
	if count1 > 3
		errorMessage
	end
	num = cut num, count1
	
	if count1 == 1 && count5 == 0
		count5 = searchInARow(num, array[counter][2])
		num = cut num, count5
		if count5 > 1
			errorMessage
		elsif count5 == 1
			value = value + 4*(10**array[counter][0])
		else 
			count10 = searchInARow(num, array[counter-1][1])
			num = cut num, count10
			if count10 > 1
				errorMessage
			elsif count10 == 1
				value = value + 9*(10**array[counter][0])
			else
				value = value + count1*(10**array[counter][0])
			end
		end
	else
		value = value + count1*(10**array[counter][0])
	end
	counter = counter+1
end
if num == ""
	puts value
else
	errorMessage
end	