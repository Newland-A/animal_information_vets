class UsersController < ApplicationController
  
  get '/signup' do
    erb :'users/signup'
  end

  post '/signup' do
    if params[:username] == "" || params[:email] == "" || params[:password] == ""
      redirect to 'signup'
    else
      # binding.pry
      if params[:vet_id] == "is_vet"
        @user = User.new(:username => params[:username], :email => params[:email], :password => params[:password], :is_vet => true)
      else
        @user = User.new(:username => params[:username], :email => params[:email], :password => params[:password], :is_owner => true) 
      end
      @user.save
      session[:user_id] = @user.id
      redirect to '/pets/new'
    end
  end
end