require('sinatra')
require('sinatra/contrib/all')
require_relative('models/game')

get '/' do
  erb(:home)
end

get '/:player1/:player2' do
  p game = Game.new(params)
  @winner = game.check_winner()
  @hand = game.winner_hand()
  erb(:result)
end
