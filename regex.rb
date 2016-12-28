class Find
	def get
a='hello my dear friends my \transaction_id=\123\ '
p= a.scan(/\d+/)


puts "Transaction_id is "
puts p
end
end
f=Find.new
f.get

