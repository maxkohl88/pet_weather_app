class PetsController < ApplicationController

  def index
    response = Unirest.get "http://maxk-pet-api.herokuapp.com/pets"
    @pets = response.body
  end

  def show
    pet_id = params[:id]
    response = Unirest.get "http://maxk-pet-api.herokuapp.com/pets/#{pet_id}"
    @pet = response.body
  end

end
