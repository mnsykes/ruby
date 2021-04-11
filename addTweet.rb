# function that takes in the hash based on selected comedian
# user can input new entry in full program user would be authenticated 
# user can enter as many tweets as they want and the loop is exited
# by entering 1 or blank entry


def addTweet(comedian, newName)
	i = 0
	nextNum = 10
	puts "\n\nHow many tweets would you like to enter?"
	numTweets = gets.to_i() # validates that entry is an integer
	while i < numTweets do
		i += 1
		puts "\n\nAdd tweet #{i.to_s()} here: " 
		addJokes = gets.chomp
		if addJokes == ""
			return
		else
			nextNum += 1 # increment nextNum with each new tweet
			nextKey = newName + nextNum.to_s() # nextKey is now mitch11 for example
			comedian [nextKey] = addJokes # add new entry to hash
		end
	end
	puts "\n**TWEET(s) SUCCESSFULLY ADDED**\n\n"
end



