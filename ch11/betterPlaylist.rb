def removeToTop array
	newArray = []
	startNum = rand(array.length/2)
	endNum = rand((array.length+1)/2)+array.length/2
	counter = startNum
	while counter < endNum
		newArray.push array[counter]
		counter = counter+1
	end
	counter = 0
	while counter < startNum
		newArray.push array[counter]
		counter = counter+1
	end
	counter = endNum
	while counter < array.length
		newArray.push array[counter]
		counter = counter+1
	end
	return newArray
end
def split array
	newArray = []
	counter = 0
	while counter < array.length/2
		newArray.push array[counter]
		newArray.push array[(array.length+1)/2 + counter]
		counter = counter+1
	end
	if array.length%2 == 1
		newArray.push array[counter]
	end
	return newArray
end
def randomSplit array
	newArray = []
	counter0 = 0
	counter1 = 0
	counter0Max = array.length/2
	counter1Max = (array.length+1)/2
	array.length.times do
		num = rand(2)
		if (num == 0 && counter0 < counter0Max) || counter1 >= counter1Max
			newArray.push array[counter0]
			counter0 = counter0+1
		else
			newArray.push array[array.length/2+counter1]
			counter1 = counter1+1
		end
	end
	return newArray
end
def removeToBottom array
	newArray = []
	startNum = rand(array.length/2)
	endNum = rand((array.length+1)/2)+array.length/2
	counter = 0
	while counter < startNum
		newArray.push array[counter]
		counter = counter+1
	end
	counter = endNum
	while counter < array.length
		newArray.push array[counter]
		counter = counter+1
	end
	counter = startNum
	while counter < endNum
		newArray.push array[counter]
		counter = counter+1
	end
	return newArray
end
def shuffle array
	(10*array.length).times do
		array = removeToBottom(randomSplit(split(removeToTop(array))))
	end
	return array
end
Dir.chdir 'C:/Users/Jo/Music'
song_names = Dir['**/*.mp3']
playlist = shuffle song_names
filename = "BetterPlaylist.m3u"
File.open filename, 'w' do |f|
	f.write playlist.join("\n")
end