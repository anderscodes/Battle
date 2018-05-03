require 'sinatra/base'

require './lib/player'

class Battle < Sinatra::Base

  $player_1 = Player.new
  $player_2 = Player.new

  enable :sessions
  set :session_secret, "My session secret"

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1.set_name(params[:name1])
    $player_2.set_name(params[:name2])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    params['player'] == 'player_1' ? $player_1.lose_hit_points(3) : $player_2.lose_hit_points(3)
    redirect '/play'
  end

  # The following only works for running Sinatra directly, not Shotgun.
  run! if app_file == $0

end
