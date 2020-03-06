# Our app.rb is our Controller file.
require './lib/game.rb'
require 'sinatra/base'
require './lib/player.rb' # We now need to require the player.rb file because in our ./names
# file path we are setting global variables equal to new instances of the player.class

# Our class Battle inherits it's properites from "Sinatra::Base"
class Battle < Sinatra::Base

enable :sessions

get '/' do # Web page file path is just get "/" as we're 
  # requiring data back from the server.
  erb :index
end

post '/names' do # When we fill in the battle info
  # the returned web page has the file path post "/names"
  # Sending data to the server (hence we put post)
  $player_1 = Player.new(params[:player_1_name])
  $player_2 = Player.new(params[:player_2_name])
  redirect '/play'
end

# Params is the input we're passing in over the web and we're setting this to sessions we're passing in 
# Presuming sessions means we can run this over and over again.

get '/play' do # get as we're getting info back from the server.
  @player_1 = $player_1
  @player_2 = $player_2
  erb :play
end
# Player.new("name")
get '/attack' do
  @player_1 = $player_1
  @player_2 = $player_2
  Game.new.attack(@player_2)
  erb :attack
end

# We're now setting the information we've passed in sessions equal to these instance variables,
# which we can now call in our play.erb file.
run! if app_file == $0
end

# Controllers can instantiate only one object. Therefore, views
# can only know about one instance variable and views should
# only send messages to that object. In this case a new instance
# of player.