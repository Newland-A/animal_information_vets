class PetsController < ApplicationController

  get '/pets' do
    redirect_if_not_logged_in
    @pets = Pet.all
    erb :index
  end

  get '/pets/new' do
    redirect_if_not_logged_in
    @vets = User.where(is_vet: true)
    @owners = User.where(is_owner: true)
    @user = User.all
    erb :"pets/new"
  end
  
  get '/pets/:id' do
    redirect_if_not_logged_in
    @pet = Pet.find_by_id(params[:id])
    erb :"pets/show"
  end

  post '/pets' do
    # binding.pry

    @pet = current_user.pets.build(params)# unknown attribute pet for Pet
    
    # binding.pry
    
    if @pet.save
      redirect "/pets/#{@pet.id}"
    else
      redirect '/pets/new'
    end
  end

  get '/pets/:id/edit' do
    redirect_if_not_logged_in
    @users = User.all
    @pet = Pet.find_by_id(params[:id])
    if @pet.user.id == current_user.id
        erb :"pets/edit"
    else
        redirect "/pets"
    end
  end

  patch '/pets/:id' do
    @pets = Pet.find_by_id(params[:id])
    params.delete("_method")
    if @pets.update(params)
        redirect "/pets/#{@pets.id}"
    else
        redirect "pets/new"
    end
  end

  delete '/pets/:id' do
    @pet = Pet.find_by_id(params[:id])
    if @pet.Pet.id == current_user.id
        @pet.destroy
    end
    redirect "/pets"
  end
end