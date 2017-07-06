class Die
	def initialize
		# I'll just roll the die, though we could do something else
		# if we wanted to, such as setting the die to have 6 showing.
		roll
	end
	def roll
		@number_showing = 1 + rand(6)
	end
	def showing
		@number_showing
	end
	def cheat
		puts "If you want to cheat, enter in a valid die number."
		num = gets.chomp.to_i
		if num >= 1 && num <= 6
			@number_showing = num
		else
			@number_showing
		end
	end
end
puts "You rolled a " + Die.new.cheat.to_s + "."