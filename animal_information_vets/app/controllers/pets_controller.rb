class PetsController < ApplicationController

  get '/pets' do
    redirect_if_not_logged_in
    @pets = Pet.all
    erb :'pets/index'
  end

  get '/pets/new' do
    redirect_if_not_logged_in
    @user = User.all
    erb :"pets/new"
  end
  
  get '/pets/:id' do
    redirect_if_not_logged_in
    @pet = Pet.find_by_id(params[:id])
    erb :"pets/show"
  end

  post '/pets' do
    @pet = current_user.pets.build(params)
    if @pet.save
      redirect '/pets/#{@pet.id}'
    else
      redirect '/pets/new'
    end
  end

  get '/posts/:id/edit' do
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
    if @pet.update(params)
        redirect "/pets/#{@pet.id}"
    else
        redirect "pets/new"
    end
  end

  delete '/pets/:id' do
    @pet = Pet.find_by_id(params[:id])
    if @pet.User.id == current_user.id
        @pet.destroy
    end
    redirect "/pets"
  end
end