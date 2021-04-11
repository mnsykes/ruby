def printTweets(comedian)
	tweets = comedian.each { |key, val| puts "(#{key}) #{val}\n\n" }
	return tweets
end