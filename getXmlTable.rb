# function to create XML record for each comedian

def getXmlTable(comedian, newName)
	puts "<xml version 1.0>"
	puts "<tweets>"
	puts "<tweet>"
	puts "<comedian>#{newName}</comedian>"
	comedian.each { |key, val| puts "<key>(#{key})</key><td>#{val}</td></tr>\n" }
	puts "</tweet>"
	puts "</tweets>"
end
