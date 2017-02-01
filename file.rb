require 'csv'
CSV.open('new.csv', "wb") do |csv|
    f = File.open('details.csv', "r")
    f.each_line do |line|
    row = line.split(/[,]/)
    csv << row
}
end
end
end


CSV.open('new.csv') do |row|
	puts row
end