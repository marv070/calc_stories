require 'sinatra'


get'/' do
  erb :info
end

post '/info' do
  number_of_items = params[:number_of_items]

erb :info, :locals => { :number_of_items => number_of_items}
end