require 'sinatra/base'

class Battleships < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/game' do
  	erb :game
  end

  get '/no_name_provided' do
  	@name = 
    erb :no_name_provided
  end

  get '/start_game' do
  	erb :start_game
  end

  set views: proc{ File.join(root, '..', 'views') }

  # start the server if ruby file executed directly
  run! if app_file == $0
end
