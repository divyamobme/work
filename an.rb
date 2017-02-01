
fh = open("phonenvalues.txt","r")
fh.each do |line|
	puts line
end
chars = line.split('')
puts chars
   # chars.each do |c|
    #	puts c
    #end


    #if ARGV.length < 1
    #puts "Missing filename from the command line"
    #exit;
#end 
count = []
 new1 =[]
#filename = ARGV[0]
fh = open("phonenvalues.txt","r")
fh.each do |line|
    chars = line.split('')
    chars.each do |c|
        for i in each 
        if c != ' ' then
            if not count[c.to_i] then
                count[c.to_i] = 0
            end
            count[c.to_i] += 1
        end
        j=count
        while j>count-10
            new1[j.to_i]=count[j.to_i]
        end
    end
end
 end  
(0..9).each do |i|
    print i, '    ', ( count[i] ? count[i] : 0), "\n"
end

csv.each do |row|
   phone_number = row['HomePhone'].to_s
   if phone_number.length == 10
     puts "Home Phone: #{phone_number}"
   elsif phone_number.length == 11 && phone_number[0] == "1"
     puts "Home Phone: #{phone_number[1..10]}"
   else
     puts "Home Phone: 0000000000"
   end
end
def extract_phone_number(input)
  if input.gsub(/\D/, "").match(/^1?(\d{3})(\d{3})(\d{4})/)
   new.push
  end
end
fields[0].each do |input, expected_output|
  extracted = extract_phone_number(input)
  print "FAIL (expected #{expected_output}): " unless extracted == expected_output
  puts extracted
end
  end
  # create a new Personelds
  p = Phone.new

  # do a little work here to get rid of double-quotes and blanks
  p.phonenumber = fields[0].tr_i('"', '').strip

  p.values = fields[1].tr_i('"', '').strip
  details.push(p)
  
def phone_value (phone, value)
    if value>100
  phonenew=[]
  length= phone.length
  i=length
  while i>length-10
    phonenew[i.to_i]=phone[i.to_i]
    i--
   end
else
    delete
end
end
end

CSV.open('output.csv', 'wb') do |csv_out|
  CSV.foreach('details.csv', :headers => true) do |csv_in|
    csv_out << [csv_in['Phone Number'], csv_in['Value']]
  end
end
