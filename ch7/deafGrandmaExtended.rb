reply = gets.chomp
counter = 0
while (reply != 'BYE' || counter != 3)
	if reply == reply.upcase
		year = rand(21)+1930
		puts 'NO, NOT SINCE '+year.to_s+'!'
	else
		puts 'HUH?! SPEAK UP, SONNY!'
	end
	reply = gets.chomp
	if reply == 'BYE'
		counter = counter+1 
	else counter = 0
	end
end
puts 'BYE!'