def make_change(amount)
	change = {}
	if amount >= 50
		change[:quarter] = 2
		amount -= 50
	end
	if amount >= 25  
		change[:quarter] = 1 #represents quarter for 25 cents.
		amount -= 25
	end
	if amount >= 20
		change[:dime] = 2 #represent 2 dimes for 20 cents.
		amount -= 20
	end
	if amount >= 10  #represents any number less than 10.
		change[:dime] = 1 #represents for 10 cents to dime  for amount 10.
		amount -= 10     
	end
	if amount >= 5 
		change[:nickel] = 1  #it represents for 5 cents to nickel for amount 5.
	    amount -= 5       
	end
	if  amount >= 1    # amount is for less than or equal to 1.
        change[:penny] = amount # > represents the penny for 1 cent.
    end
		change  #empty hash represents the amount   	
end