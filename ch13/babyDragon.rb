class Dragon
	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10 # He's full.
		@stuff_in_intestine = 0 # He doesn't need to go.
		puts "#{@name} is born."
	end
	def feed
		puts "You feed #{@name}."
		@stuff_in_belly = 10
		passage_of_time
	end
	def walk
		puts "You walk #{@name}."
		@stuff_in_intestine = 0
		passage_of_time
	end
	def put_to_bed
		puts "You put #{@name} to bed."
		@asleep = true
		3.times do
			if @asleep
				passage_of_time
			end
			if @asleep
				puts "#{@name} snores, filling the room with smoke."
			end
		end
		if @asleep
			@asleep = false
			puts "#{@name} wakes up slowly."
		end
	end
	def toss
		puts "You toss #{@name} up into the air."
		puts 'He giggles, which singes your eyebrows.'
		passage_of_time
	end
	def rock
		puts "You rock #{@name} gently."
		@asleep = true
		puts 'He briefly dozes off...'
		passage_of_time
		if @asleep
			@asleep = false
			puts '...but wakes when you stop.'
		end
	end
	def methodDispatch
		while true
			puts "Enter F to feed #{@name}."
			puts "Enter W to walk #{@name}."
			puts "Enter R to rock #{@name}."
			puts "Enter T to toss #{@name}."
			puts "Enter B to put #{@name} to bed."
			puts "Enter E to exit the program."
			puts "What would you like to do?"
			reply = gets.chomp.upcase
			if reply == 'F'
				feed
			elsif reply == 'W'
				walk
			elsif reply == 'R'
				rock
			elsif reply == 'T'
				toss
			elsif reply == 'B'
				put_to_bed
			elsif reply == 'E'
				puts "Bye!"
				exit
			else
				puts "Sorry, that is not a valid command."
			end
		end
	end
	private
	# "private" means that the methods defined here are
	# methods internal to the object. (You can feed your
	# dragon, but you can't ask him whether he's hungry.)
	def hungry?
		# Method names can end with "?".
		# Usually, we do this only if the method
		# returns true or false, like this:
		@stuff_in_belly <= 2
	end
	def poopy?
		@stuff_in_intestine >= 8
	end
	def passage_of_time
		if @stuff_in_belly > 0
			# Move food from belly to intestine.
			@stuff_in_belly = @stuff_in_belly - 1
			@stuff_in_intestine = @stuff_in_intestine + 1
		else # Our dragon is starving!
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts "#{@name} is starving! In desperation, he ate YOU!"
			exit # This quits the program.
		end
		if @stuff_in_intestine >= 10
			@stuff_in_intestine = 0
			puts "Whoops! #{@name} had an accident..."
		end
		if hungry?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts "#{@name}'s stomach grumbles..."
		end
		if poopy?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts "#{@name} does the potty dance..."
		end
	end
end
puts 'What would you like to name your dragon?'
name = gets.chomp.capitalize
dragon = Dragon.new name
dragon.methodDispatch