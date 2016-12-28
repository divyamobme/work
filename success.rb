class Success
	def count
a="success in the town of error in the SUCCESS sucCess displaying wrong Form of SuccESS deciding SuccEss"
puts "String is \n #{a}"
number=a.scan(/success/).length
puts "Number of times 'success' appeared in the sting is #{number}"
end
end
s=Success.new
s.count
