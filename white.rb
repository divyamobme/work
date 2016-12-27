str="hello how are you 3239234 number strugg#!@!#le root fur$$$niture"
puts "String is \n #{str}"
str.gsub!(" ","|")
puts"String after removing whitespace and added '|'"
puts"#{str}"