#!/usr/bin/ruby
#my = Mysql.new(hostname, username, password, databasename) 
require "mysql"
begin
con = Mysql.new('localhost', 'sj', 'Good@123', 'Newfile')
con.query("CREATE TABLE IF NOT EXISTS \
        People(Id INT PRIMARY KEY AUTO_INCREMENT, Name VARCHAR(25))")
        con.query("INSERT INTO People(Name) VALUES('Arya')")
        con.query("INSERT INTO People(Name) VALUES('Jasmin')")
        con.query("INSERT INTO People(Name) VALUES('Hanna')")
        con.query("INSERT INTO People(Name) VALUES('Ammu')")
        con.query("INSERT INTO People(Name) VALUES('sandra')") 
          rs = con.query("SELECT * FROM People")
          n_rows = rs.num_rows
          n_rows.times do
    puts rs.fetch_row.join("\s")
end
ensure
    con.close 
end
   