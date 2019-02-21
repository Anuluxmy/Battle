require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1,player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.player_1.name
    @player_2 = $game.player_2.name
    erb :play
  end

  get '/player_1_attack' do
    @player_1 = $game.player_1.name
    @player_2 = $game.player_2.name
    $game.attack($game.player_2)
    erb :player_1_attack
  end

  get '/player_2_attack' do
    @player_1 = $game.player_1.name
    @player_2 = $game.player_2.name
    $game.attack($game.player_1)
    erb :player_2_attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
