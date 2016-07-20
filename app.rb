require 'sinatra/base'
# require 'spec_helper'

class Batle < Sinatra::Base
  get '/' do
    erb :form
  end

  post '/form' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
