class PetsController < ApplicationController

  get '/pets' do
    @pets = Pet.all
    erb :'pets/index'
  end

  get '/pets/new' do
    @user = User.all
    erb :"pets/new"
  end
  
  post '/pets/new' do
    @pets = current_user.pets.build(params)
    if @pet.save
      redirect '/pets/#{@pets.id}'
    else
      redirect '/pets/new'
    end
  end
end