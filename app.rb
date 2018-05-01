require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
get '/' do
  erb(:index)
end

post '/play' do
  @name1 = params[:name1]
  @name2 = params[:name2]
  erb(:play)
end

run! if app_file == $0

end
