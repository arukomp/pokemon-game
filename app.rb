require 'sinatra/base'
require 'spec_helper'

class Batle < Sinatra::Base
  get '/' do
    'Hello Batle!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
