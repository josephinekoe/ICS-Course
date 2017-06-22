puts 'List some words to shuffle and press ENTER when you are done:'
def addWord array
	word = gets.chomp
	if word == ''
		puts 'Here they are, shuffled:'
		return array
	else
		num = rand(array.length+1)
		if num == array.length
			array.push word
		else
			array.push array[array.length-1]
			counter = array.length-1		
			while counter > num
				array[counter] = array[counter-1]
				counter = counter-1
			end
			array[num] = word
		end
		addWord array
	end
end
puts addWord([]).join(' ')