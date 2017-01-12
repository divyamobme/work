class Wars
  
attr_accessor :shaarmy
  
attr_accessor :falarmy
  
attr_accessor :falinew

attr_accessor :shanew

attr_accessor :leng


def initialize
	 
@shaarmy=[100,50,10,5]
	
@falarmy=[300,200,40,20]

@falinew=Array.new

@shanew=Array.new

@leng=Array.new
  
end

def lastrule (shaarmy,shanew) 
  #substitution rule 3 n 4
  i=3
  begin
    if shanew[i] >shaarmy[i]
      leng[i]=shaarmy[i]
      shanew[i] -=shaarmy[i]
      shaarmy[i]=0
    else
      leng[i] =shanew[i]
      shaarmy[i] -=shanew[i]
      shanew[i]=0
    end
    i -=1
  end while(i!=-1)
    i =3
    # j = 3
  begin
    
    if shanew[i]!=0
        j=i-1
        if j==-1
          j =i+1
        end
      begin

        if shaarmy[j]!=0
          if shanew[i] > shaarmy[j]
            leng[j] += shaarmy[j]        
            shanew[i] -= shaarmy[j]
            shaarmy[j]=0
            shanew[i]= shanew[i]*2 
            
                #king loss the war
                if shaarmy[0]==0 && shaarmy[1]==0 && shaarmy[2]==0 && shaarmy[3]==0
                   puts "Lengaburu deploys #{leng[0]} H, #{leng[1]} E, #{leng[2]} AT, #{leng[3]} SG and loss"
                   break             
                end
          else 
           # shanew[i] <= shaarmy[j]
            shaarmy[j] -=2*shanew[i]
            leng[j] += 2*shanew[i]
            shanew[i]=0
             #king win the war
            if shanew[0]==0 && shanew[1]==0 && shanew[2]==0 && shanew[3]==0
              puts "Lengaburu deploys #{leng[0]} H, #{leng[1]} E, #{leng[2]} AT, #{leng[3]} SG and wins"
              break
            end
          end
        end
            j -= 1
      end while(j!=-1)
         
    else 
        i -=1           
       
    end  
  end while(i!=-1)     
end

def rule2(shaarmy,shanew)  
  #like to like rule
   if shanew[0] <=shaarmy[0] && shanew[1]<=shaarmy[1] && shanew[2]<=shaarmy[2] && shanew[3]<=shaarmy[3]
    puts "Lengaburu deploys #{shanew[0]} H, #{shanew[1]} E, #{shanew[2]} AT, #{shanew[3]} SG and wins"
   else
    # puts shanew
    lastrule(shaarmy,shanew)
   end
end

  
def rule1(shanew,falinew)
  #power rule
  for i in 0..3
     if (falinew[i])%2 ==0
       shanew[i]=((falinew[i])/2).to_i
     else
       shanew[i]=((falinew[i])+1)/2.to_i
     end
  end
  #puts shanew
  rule2(shaarmy,shanew)
end


def input(falinew)
		
puts "Falicornia attacks with H,E,AT,SG respectively"
		
  for i in 0..3
			
   value=gets.chomp.to_i
			
   falinew[i]=value
  end
  if falinew[0] >falarmy[0] && falinew[1] >falarmy[1] && falinew[2] >falarmy[2] && falinew[3] >falarmy[3]
     puts "Number of battalions limit exceeded cann't start war"
  else
     puts "War can start"
     #printed the inputs
     puts "Falicornia battalions are #{falinew[0]} H, #{falinew[1]} E, #{falinew[2]} AT, #{falinew[3]} SG " 
     rule1(shanew,falinew)
  end      
#end
end	

end

w=Wars.new

w.input(w.falinew)
