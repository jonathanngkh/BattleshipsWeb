require 'sinatra/base'

class BattleshipsWeb < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new_game' do
    erb :name_form
  end

  get '/greeting' do
    @name = params[:name]
    "Hi " + params[:name]
  end

  set :views, proc { File.join(root, '..', 'views')}

  # start the server if ruby file executed directly
  run! if app_file == $0
end
