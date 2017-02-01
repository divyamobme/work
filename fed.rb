File.open("extract.txt", 'wb') do |crt|
		puts "Please enter word to find"
word = gets.chomp
input=File.foreach("FederalBank_9544668304.txt") do |line|
	if m = line.match( /\b#{word}\b/i ) 
	ans=line.scan(/"([^"]*)"/)
	puts ans
	crt<<ans
end
end

 end
