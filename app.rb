require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, "My session secret"

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    session[:player_1_hit_points] = 7
    session[:player_2_hit_points] = 7
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:name1]
    @player_2_name = session[:name2]
    @player_1_hit_points = session[:player_1_hit_points]
    @player_2_hit_points = session[:player_2_hit_points]
    erb(:play)
  end

  post '/attack-player-1' do
    session[:player_1_hit_points] -= 3
    redirect '/play'
  end

  post '/attack-player-2' do
    session[:player_2_hit_points] -= 3 
    redirect '/play'
  end

  # The following only works for running Sinatra directly, not Shotgun.
  run! if app_file == $0

end
