
      array=[1, 4, 6, 8, 9, 10, 34, 56]
      puts "Array #{array}"
      odd=[]
      even=[]
      array.each do |x| 
    
        if(x%2==0)
          even.push(x)
          
        else
          odd.push(x)
        end
      end
      puts "Even numbers are #{even}"
      puts "Odd numbers are #{odd}" 


