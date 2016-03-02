require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/shoe_order.rb')

get '/shoe/new' do
  erb(:new)
end

post '/shoe' do
  @shoe_order = Shoe_order.new(params)
  @shoe_order.save()
  erb(:summary)
end



