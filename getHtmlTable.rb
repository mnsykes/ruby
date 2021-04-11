# function to create HTML table based on hash

def getHtmlTable(comedian, newName)
	puts "\n\nHTML Page containing information on my Team:\n\n"
	puts "<html>\n"
	puts "<head>\n"
	puts "<title>Tweets</title>"
	puts "</head>\n"
	puts "<body>\n"
	puts "<H1>Tweets by #{newName.capitalize()}</H1>\n"
	puts "<table border=1>\n"
	puts "<tr><th>Key</th><th>Tweet</th></tr>\n"
	comedian.each { |key, val| puts "<tr><td>(#{key})</td><td>#{val}</td></tr>\n" }
	puts "</table>\n"
	puts "</body>\n"
	puts "</html>\n"
end