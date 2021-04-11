 

#import modules
require_relative "getHash"
require_relative "printTweets"
require_relative "addTweet"
require_relative "searchTweet"
require_relative "deleteTweet"
require_relative "getName"
require_relative "getHtmlTable"
require_relative "getXmlTable"



# Hash for Mitch Hedberg tweets
$mitch = { 
"mitch1" => "I like escalators because an escalator can never break; it can only \
become stairs. There would never be an 'Escalator Temporarily Out of Order' sign. \
Only an 'Escalator Temporarily Stairs...Sorry for the Convenience.'", 
"mitch2" => "I had a paper route when I was a kid. I was a paperboy. I was supposed to go \
to 2000 houses...or two dumpsters.", 
"mitch3" => "I like refried beans. That's why I want to try fried beans. Because maybe \
they're just as good and we're wasting time.", 
"mitch4" => "I think Bigfoot is blurry, that's the problem.", 
"mitch5" => "This jacket is dry clean only...which means it's dirty.", 
"mitch6" => "I did a radio interview. The DJs first question was 'Who are you?' I had to think, \
'Is this guy really deep or did I drive to the wrong radio station?'", 
"mitch7" => "I was at a casino, I was standing by the door, and the security guard came over and \
said 'You are going to have to move. You are blocking the fire exit,' as if though there was a fire, \
I wasn't gonna run. If you're flammable and have legs, you are never blocking a fire exit.",
"mitch8" => "If I had nine of my fingers missing...I wouldn't type any slower",
"mitch9" => "Every time I go and shave, I assume there's someone else on the planet shaving. \
So I say, 'I'm gonna go shave...too'",
"mitch10" => "Xylophone is spelled with an 'X'. That's wrong. Xylphone 'Zzz', 'X?' I don't see it. \
It should be a 'Z' up front. Next time you spell xylophone, use a 'Z'. And if someone says 'Hey That's wrong,' \
say 'No it ain't.'",
} 


# Hash for Demetri Martin tweets
$demetri = { 
"demetri1" => "I've found that there is a small but important difference between peeing in the pool and \
peeing into the pool.", 
"demetri2" => "The easiest time to add insult to injury is when you're signing somebody's cast.", 
"demetri3" => "About a month ago I got a cactus. A week later, it died. I was really depressed because I was \
like 'Damn! I am less nurturing that a desert.'", 
"demetri4" => "I think it would be cool if you were writing a ransom note on your computer, if the paper clip popped up \
and said, 'Looks like you're writing a ransom note. Need help? You should use more forceful language, you'll get more money.'", 
"demetri5" => "I think vests are all about protection. You know what I mean? Like a life-vest protects you from drowning and a \
bullet-proof vest protects you from getting shot and the sweater-vest protects you from pretty girls.", 
"demetri6" => "When they were naming vitamins they must have thought there were going to be way more \
vitamins than there ended up being. OK let's name these: Vitamin A, Vitamin B...ok man slow down we've got a lot \
to cover here. B2, B3, B4, B5, B6, B12. Then they got to E and they were like 'We're pretty much done here. We've got all \
those damn B's. This is embarassing. Let's just skip to K and get the hell out of here.'",
"demetri7" => "I saw a door that said exit only. So I entered through it and went to the guy working there and said \
'I have good news. You have severely underestimated that door over there. By like a hundred percent.'",
"demetri8" => "I have a jar at home, and I put pennies in it whenever I curse. The other day I spilled the jar. \
I owe it about $25.",
"demetri9" => "Last week I lost my temper in my karate class. Man, I'm not doing that again until I'm a black belt. \
Because I can tell you there's a difference between taking karate and receiving karate.",
"demetri10" => "I think the worst time to have a heart attack is during a game of charades.",
} 


# MAIN LOOP

loop do
	puts "\n\nCHOOSE YOUR COMEDIAN"
	puts "--------------------\n\n"
	puts "1 - Mitch Hedberg\n"
	puts "2 - Demetri Martin\n\n"
	puts "Make a selection: "
	getComedian = gets.to_i()
	if getComedian == " "
		break
	else
		loop do 
			newName = getName(getComedian)
			comedian = getHash(getComedian)
			puts "-------------------------------"
			puts "*Options*\n\n"
			puts "1 - Print All Tweets"
			puts "2 - Add a New Tweet"
			puts "3 - Search for a Tweet"
			puts "4 - Delete a Tweet"
			puts "5 - Create an HTML Table"
			puts "6 - Create an XML Table"
			puts "7 - Return to Comedian Selection"
			puts "--------------------------------"
			puts "Make a selection:"
			choice = gets.to_i()
			if choice == 1
				printf "\n\nA Selection of Tweets by #{newName.capitalize()}\n"
				puts "__________________________________\n\n"
				printTweets(comedian)
			elsif choice == 2
				addTweet(comedian, newName)
			elsif choice == 3
				searchTweet(comedian, newName)
			elsif choice == 4
				deleteTweet(comedian)
			elsif choice == 5
				getHtmlTable(comedian, newName)
			elsif choice == 6
				getXmlTable(comedian, newName)
			elsif choice == 7
				break
			else
				break
			end
		end
	end
end



