#def make_change(amount)
#	change = {}
#	if amount >= 75
#		change[:quarter] = 3 #represents for 75 cents to get 3 quarters.
#		amount -= 75
#	end
#	if amount >= 50
#		change[:quarter] = 2 #represents for 50 cents to get 2 quarter.
#		amount -= 50
#	end
#	if amount >= 25  
#		change[:quarter] = 1 #represents quarter for 25 cents.
#		amount -= 25
#	end
#	if amount >= 20
#		change[:dime] = 2 #represent 2 dimes for 20 cents.
#		amount -= 20
#	end
#	if amount >= 10  #represents any number less than 10.
#		change[:dime] = 1 #represents for 10 cents to dime  for amount 10.
#		amount -= 10     
#	end
#	if amount >= 5 
#		change[:nickel] = 1  #it represents for 5 cents to nickel for amount 5.
#	    amount -= 5       
#	end
#	if  amount >= 1    # amount is for less than or equal to 1.
#        change[:penny] = amount # > represents the penny for 1 cent.
#   end
#		change  #empty hash represents the amount   	
#end
#------------#UPDATE-------------#
#def make_change(amount)
#	change = {}
#	coins = {quarter: 25, dime: 10, nickel: 5, penny: 1}
#    if amount >= coins[:quarter]
#    	number_coins = amount/coins[:quarter]
#    	change[:quarter] = number_coins
#    	amount -= coins[:quarter] * number_coins
#    end
#    if amount >= coins[:dime]
#    	number_coins = amount/coins[:dime]
#    	change[:dime] = number_coins
#    	amount -= coins[:dime] * number_coins
#    end
#    if amount >= coins[:nickel]
#    	number_coins = amount/coins[:nickel]
#    	change[:nickel] = number_coins
#    	amount -= coins[:nickel] * number_coins
#    end
#    if amount >= coins[:penny]
#    	change[:penny] = amount
#    end
#    change
#end
#-----------Making Smaller--------------#
def make_change(amount)
	change = {}
	coins = {quarter: 25, dime: 10, nickel: 5, penny: 1}
	coins.each do |coin, value|
	if amount >= value
		number_coins = amount/value
		change[coin] = number_coins
		amount -= value * number_coins
    end
   end
    change
end