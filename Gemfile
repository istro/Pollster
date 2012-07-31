source 'https://rubygems.org'

gem 'rails', '3.2.7'
gem 'less-rails-bootstrap'

group :production do
# necessary for deployment to heroku
  gem 'pg'
# necessary for deployment on dotcloud
  gem 'execjs'
  gem 'therubyracer'
end

group :development do
  gem 'sqlite3'
  gem 'debugger'
  gem 'quiet_assets'
# a collection of gems that makes your ruby console more readable
  gem 'jazz_hands'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'