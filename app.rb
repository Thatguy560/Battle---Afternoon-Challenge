require 'sinatra/base'

# Our class Battle inherits it's properites from "Sinatra::Base"
class Battle < Sinatra::Base
get '/' do
  'Testing infrastructure working!'
end

run! if app_file == $0
end