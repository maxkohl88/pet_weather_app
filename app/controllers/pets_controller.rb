class PetsController < ApplicationController

  def index
    response = Unirest.get "http://maxk-pet-api.herokuapp.com/pets"
    @pets = response.body
  end

end
