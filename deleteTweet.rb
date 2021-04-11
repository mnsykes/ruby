def deleteTweet(comedian)
	loop do
		puts "Enter the post you want to delete. ex. 'mitch4'"
		choice = gets.strip
		if !comedian.has_key?(choice)
			puts "\n**NO MATCHING RECORDS**\n"
		elsif comedian.has_key?(choice)
			deleted = comedian.delete(choice)
			puts "\n**RECORD DELETED**\n\n"
			return deleted
		else 
			break
		end
	end
end