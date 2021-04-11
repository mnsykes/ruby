# function that will search hash keys
# if key exists the key and value are returned
# if key doesn't exists message is displayed and 
# user is prompted to enter another key

def searchTweet(comedian, newName)
	loop do
		puts "\n\nEnter a key to search for (example, mitch5):"
		choice = gets.strip().downcase()
		if !comedian.has_key?(choice)
			puts "\n**RECORD NOT FOUND**\n"
		elsif comedian.has_key?(choice)
			search =  "(#{choice})" + " " + comedian[choice]
			puts "\n\nFound it!" + " " + search + "\n\n"
			return search
		end
	end
end