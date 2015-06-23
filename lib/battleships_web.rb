require 'sinatra/base'

class BattleshipsWeb < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new_game' do
    @name = params[:name]
    erb :name_form
  end

  set :views, proc { File.join(root, '..', 'views')}

  # start the server if ruby file executed directly
  run! if app_file == $0
end
