def make_change(amount)
	if amount == 5 
		{nickel: 1}  #it represents for 5 cents for amount 5.
	elsif  amount > 0
        {penny: amount} # > represents the penny for 1 cent.
    else
		{}  #empty hash represents the amount
    end    	
end