def addTweet(comedian)
	loop do
		puts "Add joke (1) to exit: "
		# Let's print out all the Tweets from the Batman 
		addJokes = gets.chomp
		# Here is another tweet added to our hash
		if addJokes == "1" || addJokes == ""
			break
		else
			$nextNum += 1 # another way to increment batnum by 1, batnum is now 10 
			nextKey = "joke" + $nextNum.to_s() # nextKey is now "batman10"
			puts "\n**TWEET ADDED**\n"
		  comedian [nextKey] = addJokes
		end
	end
end

