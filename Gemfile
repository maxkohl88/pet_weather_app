source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# use haml instead of erb
gem 'haml-rails'

# unirest gem for making REST requests to Pet API
gem 'unirest'

# json gem for easy ruby handling of json objects
gem 'json'

# pry gem for irb debugging
gem 'pry'

# .env gem for storing api keys in development
gem 'dotenv-rails', :groups => [:development, :test]

group :development do 
  gem 'spring'
  gem 'sqlite3'
  gem 'rspec-rails'
end

group :production do
  # .env gem for storing api keys in production
  gem 'dotenv-deployment'
  # postgresql gem for production on heroku
  gem 'pg'
  gem 'rails_12factor'
end

gem 'api_cache'

gem 'geocoder'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

