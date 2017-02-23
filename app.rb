require 'sinatra'
require_relative 'coin_chnger.rb'

get '/' do 
   erb :get_change, :locals => {:value => ""}
end 

post '/change' do 
  amount = params[:amount].to_i
  change = make_change(amount)
  value = "change is here #{change}"
  erb :get_change, :locals => {:value => value}
end