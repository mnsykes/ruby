# function that will delete selected tweet 
# if key exists record is deleted
# if key doesn't exist error message

def deleteTweet(comedian)
	loop do
		puts "Enter the post you want to delete (example, demetri8):"
		choice = gets.strip.downcase
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