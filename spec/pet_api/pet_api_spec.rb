require 'unirest'
require './app/controllers/concerns/Requests.rb'

describe "Pet API" do
  it 'gets all of the pets' do

    request = Requests::Pet_API.all_pets

    expect(request.code).to eq(200)
  end

  it 'gets a single pet' do

    request = Requests::Pet_API.get_pet(3)

    expect(request.body["id"]).to eq(3)
  end
end
