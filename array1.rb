class Records
  attr_accessor :array
  attr_accessor :high
  attr_accessor :low

  def initialize
  	@low=0
	@high=999
    @array=Array.new
  end
# low=0
# high=999
# array=Array.new

 def input (array)
#array=Array.new
i=0
while i<3000
array[i]=i
i+=1
end
end


def output (array,low,high)
for i in low...high
print "\t#{array[i]}"
i+=1 
end
end
end

r=Records.new

r.input(r.array)

length=(r.array).length
while r.high<length
r.output(r.array,r.low,r.high)
puts "\n\n\n"
r.low +=1000
r.high +=1000
end
