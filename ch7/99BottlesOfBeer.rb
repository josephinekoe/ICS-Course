start = 99
counter = start
bottles = ' bottles '
while counter >= 0
	if counter == 1
		bottles = ' bottle '
	elsif counter == 0
		bottles = ' bottles '
	end
	if counter != start
		puts 'Take one down, pass it around, '+counter.to_s+bottles+'of beer on the wall.'
		puts
	end
	puts counter.to_s+bottles+'of beer on the wall, '+counter.to_s+bottles+'of beer,'
	counter = counter-1
end
puts 'Go to the store, buy some more, 99 bottles of beer on the wall.'