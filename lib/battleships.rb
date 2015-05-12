require 'sinatra/base'

class Battleships < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/game' do
  	erb :game
  end

  set views: proc{ File.join(root, '..', 'views') }

  # start the server if ruby file executed directly
  run! if app_file == $0
end
