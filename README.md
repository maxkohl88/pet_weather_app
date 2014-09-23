__Does My Pet Need an Umbrella?__

__Installation__

1. Clone this repo.

2. Run bundle install to install/use all gems.

3. Run the following commands to get the database up and running:
  - rake db:create
  - rake db:migrate

3. This app uses the Forecast.io API. Visit their developer site (https://developer.forecast.io/)
to obtain your own API key. Once this has been obtained, enter your API key into
a .env file (this app uses dotenv for managing API keys) and make sure to add your
.env file to your .gitignore file.

4. To run the application locally, run 'rails server' and navigate to localhost:3000
in your browser of choice.  
