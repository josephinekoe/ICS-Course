start = 99
counter = start+1
bottles = ' bottles '
while counter != 'No'
	counter = counter-1
	if counter == 1
		bottles = ' bottle '
	elsif counter == 0
		bottles = ' bottles '
		counter = 'No'
	end
	if counter != start
		puts 'Take one down, pass it around,'
		puts counter.to_s+bottles+'of beer on the wall.'
		puts
	end
	puts counter.to_s+bottles+'of beer on the wall, '
	puts counter.to_s+bottles+'of beer,'
end
puts 'Go to the store, buy some more,'
puts '99 bottles of beer on the wall.'