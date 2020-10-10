require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :sessions, true
    set :session_secret, "password_security"
  end

  get "/" do
    redirect_if_logged_in
    erb :index
  end

  helpers do
    def logged_in?
      session[:user_id]
    end

    def current_user
       User.find_by(id: session[:user_id])
    end

    def redirect_if_not_logged_in
      if !logged_in?
        redirect "/sessions/login"
      end
    end

    def redirect_if_logged_in
      if logged_in?
        redirect "/pets" 
      end
    end
  end
end
