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
    @game = $game
    @game.attack(@game.player2)
    @game.switch
    erb :attack
  end

  post "/switch" do
    $game.switch
    redirect "/play"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
