Dir.chdir 'C:/Users/Jo/Music'
song_names = Dir['**/*.mp3']
def shuffle array
	recursiveShuffle array, []
end
def recursiveShuffle left, shuffled
	if left.length == 0
		return shuffled
	end
	song = left.pop
	num = rand(shuffled.length+1)
	if num == shuffled.length
		shuffled.push song
	else
		shuffled.push shuffled[shuffled.length-1]
		counter = shuffled.length-1		
		while counter > num
			shuffled[counter] = shuffled[counter-1]
			counter = counter-1
		end
		shuffled[num] = song
	end
	recursiveShuffle left, shuffled
end
playlist = shuffle song_names
filename = "Playlist.m3u"
File.open filename, 'w' do |f|
	f.write playlist.join("\n")
end