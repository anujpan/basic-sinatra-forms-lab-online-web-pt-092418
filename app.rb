require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end
  
  post '/team' do
    @tn = params["team_name"]
    @coach = params["coach"]
    @pg = params["point_guard"]
    @sg = params["shooting_guard"]
    @sf = params["small_forward"]
    @pf = params["power_forward"]
    @center = params["center"]
    erb :team
  end
end
