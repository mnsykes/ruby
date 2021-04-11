def searchTweet(comedian)
	loop do
		puts "Enter a key to search for"
		searchNum = "joke" + gets.to_s().strip()
		if !comedian.has_key?(searchNum)
			puts "\n**RECORD NOT FOUND**\n"
		elsif comedian.has_key?(searchNum)
			search =  puts "(#{searchNum})" + " " + comedian[searchNum]
			return search
		end
	end
end