# require rubbb'docx'
require 'json'
# def output(line)
# 	# l=line.length
# 	File.open("extract.txt", 'wb') do |line|	
# 	# output<<line	
# 	# for i in 0...l	
# 	 # output.write(line)
# 	# end
# 	end
	
	# def output(ans)
	l=crt.length
	for i in 0...l
 	File.open("extract.txt", 'wb') do |crt|
 		end

# end
	# end


# def input()
puts "Please enter word to find"
word = gets.chomp
# c=0
# input= File.open("BankOfBaroda_9987095696.txt", "r")

input=File.foreach("BankOfBaroda_9987095696.txt") do |line|
	# puts line
	if m = line.match( /\b#{word}\b/i ) 
	ans=line.scan(/"([^"]*)"/)

	puts ans.class
	# ans=
		# nw=ans.gsub!('"', '')
		# nw=ans.gsub!(';', '')
# ans= line.gsub!(/^\"|\"?$/, '')
crt<<ans

# puts ans.class
# hash= JSON.parse(ans)
# puts hash

# output(ans)
# File.open("extract.txt", 'wb') do |ans|
# end
		# c=c+1
		# ans[0]=line
		# puts m
		 # puts line
		# ans=line
		# for i in 0...

		 # output(line)
		# end
end
end

 end

	# input()
# output = File.open("extract.txt", "w")

  #       end
  #       l=m.length
		# output = File.open("extract.txt", "w")
		# for i in 0...l
  #        output.write(m) 
  #       end
		
#   end
# end
# end
#  # output.close
# input.close


