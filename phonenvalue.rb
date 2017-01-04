require 'csv'
def output (phone,bal)
ph=phone.length
	CSV.open('final.csv','w') do |csv|
		if csv.tell() == 0  # file is empty, so write header
         csv<< ["Phone Number", "Balance"]
        end
        for i in 0...ph
        	csv <<[phone[i],bal[i]]
        end	
    end
end
def input()
	pho=Array.new
	valu=Array.new
    csv=CSV.table('details.csv', :headers=>true)
     csv.each do |c|    	
        phone=c[:phoneno]
        values=c[:values]
        if values.to_i>=100
 	    val=values
 	    ph=phone.to_s
 	    ph.split.last(10)
 	    pho << ph
 	    valu << val
        output(pho,valu)
        end
    end
#output(pho, valu)
end

input()

