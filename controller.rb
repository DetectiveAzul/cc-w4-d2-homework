require('sinatra')
require('sinatra/contrib/all')

get '/' do
  erb(:home)
end

get '/:player1/:player2' do
  erb(:result)
end
