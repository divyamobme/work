require 'csv'
#input=Hash.new
def output (phone,bal)
	#@land << @input[x].split(/\s/).map(&:to_i)
ph=phone.length

	CSV.open('final.csv','w') do |csv|
		if csv.tell() == 0  # file is empty, so write header
         csv<< ["Phone Number", "Balance"]
        end
        for i in 0...ph
        	csv <<[phone[i],bal[i]]
        end


		#csv<<[phone,bal]
    end
end
def input()
	# inp=Hash.new
	pho=Array.new
	valu=Array.new

 #   CSV.foreach('details.csv') do |row|
   	#inp[row[0]]=inp[]
	#phone=row[0]
	#puts "#{phone}"
	#value=row[1]

    

    	#print row
    	#print "\n"
    
#for k in each
    

     # i=row[0][1]
     # puts i
 #    if i.to_i>=100
 #   k=row[0]
 #   inp[k[-10, 10]]=inp[row[1]]
  
 #   # phone.to_i.digits.each do |phon|
 #     #print "#{phon}"
 #     #for k in each size-10...size-1	
	# #i=size-10
	# #while i>=size-1
	# 	#phonenew[k.to_i]=phon[k.to_i]
	# 	#i +=1
	# end
	#output(phonenew,value)
    # end

    csv=CSV.table('details.csv', :headers=>true)
    # p csv[0][:name].inspect
    # p csv[0][:values].inspect
 

     csv.each do |c|
     	
    	# p c[:phoneno].inspect
    	# p c[:values].inspect
phone=c[:phoneno]
values=c[:values]
   
 if values.to_i>=100
 	val=values
 	ph=phone.to_s
 	ph.split.last(10)
 	pho << ph
 	valu << val

 	#end
 	output(pho,valu)

end
end
#output(pho, valu)
end
#end
   #end

#end


input()

