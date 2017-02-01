require 'csv'

phone=Hash.new
phonenew=Hash.new
 
 def input (phone,phonenew)
#details= CSV.read('details.csv')
CSV.foreach('details.csv') do |col|
 
 phone[col[0]]=col[1]
end
phone.each do|key,value|
    if value.to_i>=100
        key=key[-10,10]
        phonenew[key]=value

    end
end
end
def output(phonenew)
CSV.open('crtdetails.csv', 'wb') do |csv_out|
  CSV.foreach('details.csv', :headers => true) do |csv_in|
    csv_out << [csv_in['Phone Number'], csv_in['Value']]
  end
end
end

input(phone,phonenew)
output(phonenew)






