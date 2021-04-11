def getHash(getComedian)
	comedian = Hash.new
	if getComedian == 1
		comedian =  $mitch
	elsif getComedian == 2
		comedian = $demetri
	end 
	return comedian
end