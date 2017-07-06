class OrangeTree
	def initialize
		@age = 0
		@numOranges = 0
		@height = 0
		@ageBearFruit = 5
		@ageStartDying = 10
		@dead = false
	end
	def oneYearPasses
		if @dead
			'A year later, the tree is still dead. :('
		else
			@age = @age+1
			if @age > @ageStartDying && rand(2) == 0
				@dead = true
				'Oh, no! The tree is too old, and has died. :('
			else
				@height = @height+rand(2)+1
				if @age > @ageBearFruit
					newOranges = rand(@age)+1
					@numOranges = @numOranges+newOranges
					"This year your tree grew to #{@height}m tall, and produced #{newOranges} more oranges."
				else
					"This year your tree grew to #{@height}m tall, but is still too young to bear fruit."
				end
			end
		end
	end
	def height
		if @dead
			'A dead tree is not very tall. :('
		else
			@height
		end
	end
	def age
		if @dead
			'A dead tree is very old. :('
		else
			@age
		end
	end
	def orangeCount
		if @dead
			'A dead tree has no oranges. :('
		else
			@numOranges
		end
	end
	def pickOrange
		if @dead
			'A dead tree has nothing to pick. :('
		elsif @numOranges < 1
			'You search every branch, but find no oranges.'
		else
			@numOranges = @numOranges - 1
			'You pick a juicy, delicious orange!'
		end
	end
end
tree = OrangeTree.new
15.times do
	puts tree.height
	puts tree.age
	puts tree.orangeCount
	puts tree.pickOrange
	puts tree.oneYearPasses
end