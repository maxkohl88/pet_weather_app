class PetsController < ApplicationController

  def index
    response = Unirest.get "http://maxk-pet-api.herokuapp.com/pets"
    @pets = response.body
  end

  def show
    pet_id = params[:id]
    response = Unirest.get "http://maxk-pet-api.herokuapp.com/pets/#{pet_id}"
    @pet = response.body

    weather_response = Unirest.get "https://api.forecast.io/forecast/#{ENV["FORECAST_KEY"]}/#{@pet["latitude"]},#{@pet["longitude"]}"
    current_weather = weather_response.body["currently"]

    if current_weather["precipIntensity"] >= 0.017 && current_weather["precipProbability"] >= 0.30
      @umbrella_check = true
    else
      @umbrella_check = false
    end


    if @umbrella_check == true
      @umbrella_statement = "I need an umbrella!"
    else
      @umbrella_statement = "I do not need an umbrella right now."
    end

  end

end
