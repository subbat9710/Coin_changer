def make_change(amount)
	change = {}
	if amount >= 5 
		change[:nickel] = 1  #it represents for 5 cents for amount 5.
	    amount -= 5       
	end
	if  amount >= 1    # amount is for less than or equal to 1.
        change[:penny] = amount # > represents the penny for 1 cent.
    end
		change  #empty hash represents the amount   	
end