class Array
	def shuffle
		newArr = []
		numArr = []	
		length = self.length
		length.times do
			newArr.push self.pop
		end
		length.times do
			flag = false
			while flag == false
				flag = true
				randNum = rand(newArr.length)
				numArr.each do |num|
					if num == randNum
						flag = false
					end
				end
			end
			numArr.push randNum		
		end
		numArr.each do |num|
			self.push newArr[num]		
		end
	end
end
class Integer
	def factorial
		counter = 1
		product = counter
		while counter <= self
			product = product * counter
			counter = counter + 1
		end
		return product
	end
	def toRoman
		if self > 3000 || self < 1
			puts "This integer cannot be converted into roman numerals."
		end
		array = [[3, 'M', 'V'],
				 [2, 'C', 'D'],
				 [1, 'X', 'L'],
				 [0, 'I', 'V']]
		output = array[0][1]*(self/(10**array[0][0]))
		num = self%(10**array[0][0])
		counter = 1
		while counter < array.length
			digit = num/(10**array[counter][0])
			if digit == 9
				output = output + array[counter][1] + array[counter-1][1]
			elsif digit == 4
				output = output + array[counter][1] + array[counter][2]
			else
				output = output + array[counter][2]*(digit/5) + array[counter][1]*(digit%5)
			end
			num = num%(10**array[counter][0])
			counter = counter + 1
		end
		return output
	end
end
array = ['a', 'b', 'c', 'd', 'e']
array.shuffle
puts array.join(", ")
num1 = 5
puts num1.factorial
num2 = 1999
puts num2.toRoman