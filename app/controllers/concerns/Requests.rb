module Requests

  class Pet_API

    def self.all_pets
      APICache.get('get_all_pets', cache: 600) do
        Unirest.get("http://maxk-pet-api.herokuapp.com/pets")
      end
    end

    def self.get_pet(id)
      Unirest.get "http://maxk-pet-api.herokuapp.com/pets/#{id}"
    end
  end

  class Forecast_API

    def self.pet_forecast(pet)
      Unirest.get "https://api.forecast.io/forecast/#{ENV["FORECAST_KEY"]}/#{pet["latitude"]},#{pet["longitude"]}"
    end
  end
end
