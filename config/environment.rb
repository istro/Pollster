# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Pollster::Application.initialize!

# to ensure it works ok on Heroku 
config.assets.compile = true
