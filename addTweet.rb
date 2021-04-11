# function that takes in the hash based on selected comedian
# user can input new entry in full program user would be authenticated 
# user can enter as many tweets as they want and the loop is exited
# by entering 1 or blank entry


def addTweet(comedian, newName)
	loop do
		puts "Add joke (1) to exit: "
		# Let's print out all the Tweets from the Batman 
		addJokes = gets.chomp
		# Here is another tweet added to our hash
		if addJokes == "1" || addJokes == ""
			break
		else
			$nextNum += 1 # another way to increment batnum by 1, batnum is now 10 
			nextKey = newName + $nextNum.to_s() # nextKey is now "batman10"
			puts "\n**TWEET ADDED**\n"
		  comedian [nextKey] = addJokes
		end
	end
end


