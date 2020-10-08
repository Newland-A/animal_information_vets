class SessionsController < ApplicationController

  get '/login' do
    erb :'sessions/login'
  end

  post '/login' do
    #find the user
    user = User.find_by(email: params[:email])
    #authenticate the user somehow
    if user && user.authenticate(params[:password])
        # log the user in and redirect
        session[:user_id] = user.id
        redirect "/pets"
    else
        redirect "/login"
    end
  end

  get '/logout' do
    session.clear
    redirect "/login"
  end
end