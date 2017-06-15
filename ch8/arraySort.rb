puts 'List some words to sort:'
array = []
word = gets.chomp
while word != ''
	array.push word
	word = gets.chomp
end
puts 'Here they are, sorted:'
puts array.sort