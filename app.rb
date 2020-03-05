# ERB stands for Embedded Ruby file 
require 'sinatra/base'

# Our class Battle inherits it's properites from "Sinatra::Base"
class Battle < Sinatra::Base

enable :sessions

get '/' do # Web page file path is just get "/" as we're 
  # requiring data back from the server.
  erb :index
end

post '/names' do # When we fill in the battle info
  # the returned web page has the file path post "/names"
  # Sending data to the server
  session[:player_1_name] = params[:player_1_name] 
  session[:player_2_name] = params[:player_2_name]
  redirect '/play'
end

# Params is the input we're passing in over the web and we're setting this to sessions we're passing in 
# Presuming sessions means we can run this over and over again.

get '/play' do
  @player_1_name = session[:player_1_name] 
  @player_2_name = session[:player_2_name]
  erb :play
end

get '/attack' do
  @player_1_name = session[:player_1_name]
  @player_2_name = session[:player_2_name]
  erb :attack
end

# We're now setting the information we've passed in sessions equal to these instance variables,
# which we can now call in our play.erb file.

run! if app_file == $0
end