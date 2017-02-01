class Meet
	def family(person,relation)
		family={Ish=>{:father=>"King Shan", 
			:mother=>"Queen Anga",
			:brothers=>["Chit","Vich"], 
			:sister=>"Satya",
			:sisterinlaw=>["Ambi","Lika"],
			:brotherinlaw=>"Vyan"},
			Chit=>{:father=>"King Shan",
				:mother=>"Queen Anga", 
				:brothers=>["ish","vich"],
				:sister=>"satya",
				:sisterinlaw=>"Lika",
				:brotherinlaw=>"Vyan",
				:son=>["Drita","Vrita"],
				:granddaughter=>"Driya"},
			Vich=>{:father=>"King Shan",
				:mother=>"Queen Anga", 
				:brothers=>["ish","chit"],
				:sister=>"satya",
				:sisterinlaw=>"Ambi",
				:brotherinlaw=>"Vyan",
				:son=>"vila",
				:daughter=>"chika",
				:granddaughter=>"lavnya"},
			Satya=>{:father=>"King Shan",
				:mother=>"Queen Anga", 
				:brothers=>["ish","chit","vich"],
				:sisterinlaw=>["Ambi","Lika"],
				:son=>["Savya","Saayan"],
				:daughter=>"Sotvy"},
			Drita=>{:father=>"Chit",
				:mother=>"Ambi", 
				:brother=>"Vrita",
				:son=>"Jata",
				:daughter=>"Driya",
				:cousin=>["Vila","Chika","Sotvy","Savya","Saayan"]},
			Vila=>{:father=>"Vich",
				:mother=>"Lika",
				:sister=>"Chika",
				:brotherinlaw=>"Kpila",
				:cousin=>["Drita","Vrita","Sotvy","Savya","Saayan"]
				},
			Savya=>{:father=>"Vyan",
				:mother=>"Satya",
				:sister=>"sotvy",
				:brother=>"Saayan",
				:sisterinlaw=>"Mina",
				:brotherinlaw=>"Aswa",
				:son=>"Kriya",
				:cousin=>["Drita","Vrita","Chika","Vila"]
				},
			Saayan=>{:father=>"Vyan",
				:mother=>"Satya",
				:sister=>"sotvy",
				:brother=>"Savya",
				:sisterinlaw=>"kipi",
				:brotherinlaw=>"Aswa",
				:son=>"Misa",
				:cousin=>["Drita","Vrita","Chika","Vila"]
				},
			Jata=>{:father=>"Drita",
				:mother=>"Jaya",
				:sister=>"Driya",
				:brotherinlaw=>"Mnu",
				:paternaluncle=>"Vrita",
				:cousin=>["lavnya","Kriya","Misa"]
				},
			Driya=>{:father=>"Drita",
				:mother=>"Jaya",
				:brother=>"Jata",
				:paternaluncle=>"Vrita",
				:cousin=>["lavnya","Kriya","Misa"],
				},
			Lavnya=>{:father=>"Vila",
				:mother=>"Jnki",
				:paternaluncle=>"kpila",
				:paternalaunty=>"Chika",
				:cousin=>["Jata","Driya","Kriya","Misa"]
				},
			Kriya=>{:father=>"Savya",
				:mother=>"kipi",
				:paternaluncle=>["Aswa","Saayan"],
				:paternalaunty=>["Sotvy","Mina"],
				:cousin=>["Misa","Lavnya","Driya","Jata"]
				},
			Misa=>{:father=>"Saayan",
				:mother=>"Mina",
				:paternaluncle=>["Aswa","Savya"],
				:paternalaunty=>["Sotvy","Kipi"],
				:cousin=>["Misa","Lavnya","Driya","Jata"]
				}
			}
	end	
	def father


Meet={"Ish"=>Ish,"Chit"=>Chit,"Vich"=>Vich,"Satya"=>Satya,"Drita"=>Drita,
	"Vila"=>Vila,"Savya"=>Savya,"Saayan"=>Saayan,"Jata"=>Jata,"Driya"=>Driya,
	"Lavnya"=>Lavnya,"Kriya"=>Kriya,"Misa"=>Misa}

	puts "Enter the person name:"
	person=gets.chomp.to_s

	puts "Enter the relationship:"
	relation=gets.chomp.to_s

	case relation
	when 'father'
		if Meet[family]["father"]=="King Shan"
			puts "It is not available"
		else
			puts Meet[family]["father"]
end
	when 'mother'
		puts Meet[family]["mother"]

else
	puts "Don't know"
end

end

Meet_new=Meet.new
Meet_new.family






