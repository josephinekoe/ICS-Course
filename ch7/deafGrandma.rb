reply = gets.chomp
while reply != 'BYE'
	if reply == reply.upcase
		year = rand(21)+1930
		puts 'NO, NOT SINCE '+year.to_s+'!'
	else
		puts 'HUH?! SPEAK UP, SONNY!'
	end
	reply = gets.chomp
end
puts 'BYE!'