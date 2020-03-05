# ERB stands for Embedded Ruby file 
require 'sinatra/base'

# Our class Battle inherits it's properites from "Sinatra::Base"
class Battle < Sinatra::Base
get '/' do # Web page file path is just get "/" as we're 
  # requiring data back from the server.
  erb :index
end

post '/names' do # When we fill in the battle info
  # the returned web page has the file path post "/names"
  # Sending data to the server
  @player_1_name = params[:player_1_name]
  @player_2_name = params[:player_2_name]
  erb :play
end

run! if app_file == $0
end