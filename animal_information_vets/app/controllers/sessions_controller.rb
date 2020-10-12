class SessionsController < ApplicationController

  get '/login' do
    erb :'sessions/login'
  end

  post '/login' do
    #find the user
    # binding.pry
    user = User.find_by(username: params[:username])
    
    #authenticate the user somehow
    if user && user.authenticate(params[:password])
        # log the user in and redirect
        # binding.pry
        session[:user_id] = user.id
        # binding.pry
        redirect "/pets/new"
    else
      flash[:notice] = "You've entered an invalid email or password. Please try again."
        redirect "/login"
    end
  end

  get '/logout' do
    session.clear
    redirect "/login"
  end
end