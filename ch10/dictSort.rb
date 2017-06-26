def sort some_array
	recursive_sort some_array, []
end
def recursive_sort unsorted_array, sorted_array
	smallest = 0
	counter = 1
	new_unsorted = []
	while counter < unsorted_array.length
		if unsorted_array[smallest].downcase > unsorted_array[counter].downcase
			new_unsorted.push unsorted_array[smallest]
			smallest = counter
		else
			new_unsorted.push unsorted_array[counter]
		end
		counter = counter + 1
	end
	sorted_array.push unsorted_array[smallest]
	if new_unsorted.length == 0
		return sorted_array
	else
		return recursive_sort new_unsorted, sorted_array
	end
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
