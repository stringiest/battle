require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Application
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.player1
    @player_2 = $game.player2
    erb :play
  end

  get '/attack' do
    @player_1 = $game.player1
    @player_2 = $game.player2
    $game.attack(@player_2)
    erb :attack
  end

# start the server if ruby file executed directly
  run! if app_file == $0
end
