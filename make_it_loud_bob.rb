
incoming = File.open(ARGV[0], "r")
incoming.close

quotes_to_upcase = Array.new.push(incoming.read)
quotes_to_upcase = quotes_to_upcase[0].split("\n")
quotes_to_upcase.map!{|quote| quote.upcase}

outgoing = File.open(ARGV[1], "w")
outgoing.write(quotes_to_upcase.join("\n"))
outgoing.close


