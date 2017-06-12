counter = 0
while (counter != 3)
	reply = gets.chomp
	if reply == 'BYE'
		counter = counter+1
	else
		counter = 0
	end
	if reply == reply.upcase		
		if counter == 3
			puts 'BYE!'
		else
			year = rand(21)+1930
			puts 'NO, NOT SINCE '+year.to_s+'!'
		end
	else 
		puts 'HUH?! SPEAK UP, SONNY!'
	end
end