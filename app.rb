require 'sinatra/base'

class Battle < Sinatra::Application
  get '/' do
    'Testing infrastructure working!'
  end

# start the server if ruby file executed directly
  run! if app_file == $0
end
