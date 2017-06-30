def findComma string
	counter = 0
	while string[counter] != ',' && counter < string.length
		counter = counter+1
	end
	return counter
end
hash = {}
File.read('textFile.txt').each_line do |line|
	line = line.chomp
	comma = findComma line
	name = line[0..comma-1]
	date = line[comma+2..line.length-1]
	hash[name] = date
end
puts "Whose birthday would you like to know?"
answer = gets.chomp
birthday = hash[answer]
if birthday == nil
	puts "Sorry, I don't know that one."
else
	puts birthday[0..(findComma birthday)-1]
end