class PetsController < ApplicationController

  def index
    # make a request to the pet-shelter-api for all pets
    response = Unirest.get "http://maxk-pet-api.herokuapp.com/pets"
    @pets = response.body
  end

  def show
    # grab the pet's id from the url parameters
    pet_id = params[:id]
    # make a request to the pet-shelter-api for an individual pet
    response = Unirest.get "http://maxk-pet-api.herokuapp.com/pets/#{pet_id}"
    @pet = response.body

    # make a request to the Forecast.io API for the pet's weather information
    weather_response = Unirest.get "https://api.forecast.io/forecast/#{ENV["FORECAST_KEY"]}/#{@pet["latitude"]},#{@pet["longitude"]}"
    current_weather = weather_response.body["currently"]

    # logic to determine if an individual pet needs an umbrella or not
    if current_weather["precipIntensity"] >= 0.017 && current_weather["precipProbability"] >= 0.30
      @umbrella_check = true
    else
      @umbrella_check = false
    end

    # logic to set the pet's umbrella statement based off the umbrella_check
    if @umbrella_check == true
      @umbrella_statement = "I need an umbrella!"
    else
      @umbrella_statement = "I do not need an umbrella right now."
    end

  end

end
