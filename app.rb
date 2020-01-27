require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/' do
    @session = session
    erb :'index.erb'
  end
  
  post '/checkout' do
    @session[:item] = params[:item]
    erb :checkout
  end
  
  
  
  
end