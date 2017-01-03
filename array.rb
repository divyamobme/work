array=Array.new
 num=0
 while num < 5000
		array[num]=num
		num += 1
	end

	
def output(array)

	def input(array,firstvalue,lastvalue)

		for i in firstvalue...lastvalue
			
			print " #{array[i]}"
		end
	end


	size=array.length
	first=0
	last=1000
	rem=size/1000
	value=0
	while value<rem
		puts "\n\n"
	input(array,first,last)
	first=last
	last=last+1000
    value += 1
end
end

 output(array)