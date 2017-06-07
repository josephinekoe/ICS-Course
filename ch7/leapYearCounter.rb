puts 'Please name a starting year:'
startYear = gets.chomp.to_i
puts 'Please name an ending year:'
endYear = gets.chomp.to_i
while(endYear<startYear)
	puts 'Please name an ending year that is after the starting year:'
end
puts 'The leap years between those years are:'
counter = startYear
while counter <= endYear
	if counter%4 == 0
		if counter%100 == 0
			if counter%400 == 0
				puts counter.to_s
			end
		else puts counter.to_s
		end
	end
	counter = counter + 1
end