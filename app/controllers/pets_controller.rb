class PetsController < ApplicationController
  include Requests

  def index
    # make a request to the pet-shelter-api for all pets
    @pets = Requests::Pet_API.all_pets.body
  end

  def show
    # grab the pet's id from the url parameters
    pet_id = params[:id]
    # make a request to the pet-shelter-api for an individual pet
    @pet = Requests::Pet_API.get_pet(pet_id).body

    pet_location = Geocoder.search("#{@pet["latitude"].to_f}, #{@pet["longitude"].to_f}")

    pet_city = pet_location.first.data["address_components"][3]["short_name"]
    pet_state = pet_location.first.data["address_components"][5]["short_name"]

    binding.pry

    class << @pet 
      attr_accessor :address
    end

    @pet.address = "#{pet_city}, #{pet_state}"

    # make a request to the Forecast.io API for the pet's weather information
    current_weather = Requests::Forecast_API.pet_forecast(@pet).body["currently"]

    # logic to determine if an individual pet needs an umbrella or not
    if current_weather["precipIntensity"] >= 0.017 && current_weather["precipProbability"] >= 0.30
      @umbrella_statement = "I need an umbrella!"
    else
      @umbrella_statement = "I do not need an umbrella right now."
    end

  end
end
