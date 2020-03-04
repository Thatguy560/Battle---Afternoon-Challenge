# ERB stands for Embedded Ruby file 
require 'sinatra/base'

# Our class Battle inherits it's properites from "Sinatra::Base"
class Battle < Sinatra::Base
get '/' do
  erb :index
end

post '/names' do
  @player_1_name = params[:player_1_name]
  @player_2_name = params[:player_2_name]
  erb :play
end

run! if app_file == $0
end