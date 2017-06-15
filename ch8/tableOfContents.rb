lineWidth = 60
chapters = [["Getting Started", 1],
			["Numbers", 9], 
			["Letters", 13]]
puts("Table of Contents".center (lineWidth))
puts
counter = 0
while counter < chapters.length
	puts(("Chapter #{counter+1}: #{chapters[counter][0]}").ljust(lineWidth/2)+("page #{chapters[counter][1]}").rjust(lineWidth/2))
	counter = counter+1
end