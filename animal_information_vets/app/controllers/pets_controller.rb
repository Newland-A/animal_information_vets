class PetsController < ApplicationController

  get '/pets' do
    redirect_if_not_logged_in
    @pets = Pet.all
    
    erb :index
  end

  # get '/pets/:id' do
  #   redirect_if_not_logged_in
  #   @pets = Pet.find_by_id(params[:id])
  #   # binding.pry
  #   erb :"pets/show"
  # end

  get '/pets/new' do
    redirect_if_not_logged_in
    @vets = User.where(is_vet: true)
    @owners = User.where(is_owner: true)
    @user = User.all
    erb :"pets/new"
  end
  
  get '/pets/:id' do
    redirect_if_not_logged_in
    @pets = Pet.find_by_id(params[:id])
    # binding.pry
    erb :"pets/show"
  end

  post '/pets' do
    # @pet = current_user.pets.build(params)
    if params[:vet_id] != nil
      @pets = Pet.new(vet_id: params[:vet_id], owner_id: current_user.id, name: params[:pet][":name"], age: params[:pet][":age"], size: params[:pet][":size"], breed: params[:pet][":breed"])
    else 
      @pets = Pet.new(owner_id: params[:owner_id], vet_id: current_user.id, name: params[:pet][":name"], age: params[:pet][":age"], size: params[:pet][":size"], breed: params[:pet][":breed"])
    end

    if @pets.save
      redirect "/pets/#{@pets.id}"
    else
      redirect '/pets/new'
    end

  end

  get '/pets/:id/edit' do
    redirect_if_not_logged_in
    @users = User.all
    @pets = Pet.find_by_id(params[:id])
    # @pets = Pet.all.select{|pet| pet.user_id == current_user.id}
    # binding.pry
    # if @pets.user.id == current_user.id
    if @pets.owner.id == current_user.id
      # binding.pry
        erb :"pets/edit"
    elsif @pets.vets.id == current_user.id
      erb :"pets/edit"
    else
        redirect "/pets"
    end
    # binding.pry
  end

  patch '/pets/:id' do
    @pets = Pet.find_by_id(params[:id])
    params.delete("_method")
    if @pets.update(params)
        redirect "/pets/#{@pets.id}"
    else
        redirect "/pets/new"
    end
  end

  delete '/pets/:id' do
    @pets = Pet.find_by_id(params[:id])
    # binding.pry
    if @pets.owner.id == current_user.id
      # binding.pry
        @pets.destroy
    else 
      # binding.pry
        @pets.destroy
    end
    redirect "/pets"
  end
end