require 'sinatra'


get'/' do
  erb :info, :locals => { :number_of_items => " ", :subtotal => " "}
end

post '/info' do
  number_of_items = params[:number_of_items].to_i
  price_of_item = 100.to_i
  subtotal = number_of_items * price_of_item
  erb :info, :locals => { :number_of_items => number_of_items, :subtotal => subtotal}
end