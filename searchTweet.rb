# function that will search hash keys
# if key exists the key and value are returned
# if key doesn't exists message is displayed and 
# user is prompted to enter another key

def searchTweet(comedian, newName)
	loop do
		puts "Enter a key to search for"
		searchNum = newName + gets.to_s().strip()
		if !comedian.has_key?(searchNum)
			puts "\n**RECORD NOT FOUND**\n"
		elsif comedian.has_key?(searchNum)
			search =  puts "(#{searchNum})" + " " + comedian[searchNum]
			return search
		end
	end
end