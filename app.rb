require 'sinatra/base'
# require 'spec_helper'
require_relative 'lib/player'
require './lib/game'

class Batle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :form
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    $game.attack($game.player2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
