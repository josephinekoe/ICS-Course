def getNumber question, min, max
	puts question
	num = min-1
	while num < min || num > max
		puts "Enter a number between #{min} and #{max}."
		num = gets.chomp.to_i
	end
	return num
end
year = getNumber "In what year were you born?", 1900, 2017
month = getNumber "In what month were you born?", 1, 12
day = getNumber "On what date were you born?", 1, 31
hour = getNumber "At what hour were you born?", 0, 23
minute = getNumber "At what minute were you born?", 0, 59
second = getNumber "At what second were you born?", 0, 59
puts "You will be a billion seconds old on #{Time.local(year, month, day, hour, minute, second)+1000000000}."