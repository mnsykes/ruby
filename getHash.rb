# function that takes in user input of comedian selection
# new hash is created and is filled with data from either
# $mitch or $demetri depending on user choice
# returns new hash that will be passed to other functions

def getHash(getComedian)
	comedian = Hash.new
	if getComedian == 1
		comedian =  $mitch
	elsif getComedian == 2
		comedian = $demetri
	end 
	return comedian
end