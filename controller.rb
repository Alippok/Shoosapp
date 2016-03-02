require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/shoe_order.rb')

get '/shoe/new' do
  erb(:new)
end