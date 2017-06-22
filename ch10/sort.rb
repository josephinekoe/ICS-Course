def sort array
	counter = 1
	while array[counter-1] == array[counter]	|| array[counter-1] < array[counter]
		counter = counter + 1
		if counter == array.length
			return array
		end
	end
	keep = array[counter-1]
	array[counter-1] = array[counter]
	array[counter] = keep
	return sort array
end
puts 'List some words to sort and press ENTER when you are done:'
array = []
word = gets.chomp
while word != ''
	array.push word
	word = gets.chomp
end
puts 'Here they are, sorted:'
puts sort(array).join(' ')
