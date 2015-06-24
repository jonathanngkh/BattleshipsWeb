require 'sinatra/base'
require 'battleships'

class BattleshipsWeb < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new_game' do
    @name = params[:name]
    erb :name_form
  end

  get '/new_board' do
    $game = Game.new(Player, Board)

    if params[:ship] != nil or params[:ship]
    $game.player_1.place_ship(Ship.send(params[:ship]), params[:coordinate], params[:direction])
    end

    erb :own_board_view
  end

  get '/place_ship' do

  end

  set :views, proc { File.join(root, '..', 'views')}

  # start the server if ruby file executed directly
  run! if app_file == $0
end
