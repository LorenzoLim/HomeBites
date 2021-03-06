source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'nokogiri'
gem 'geokit'
# Gem for Code Quality
gem 'rubocop', require: false
# Gem for emails
# gem 'mailgun-ruby', '~>1.1.6'
# Gem for http processing
gem 'httparty'
# Gem for image resizing
gem "mini_magick"
# Gem for environment variables
gem 'dotenv-rails', groups: [:development, :test]
# Gem for file storage
gem 'fog'
# Gem for Admin Dashboard
gem "administrate"
# Gem for image uploading
gem 'carrierwave', '~> 1.0'
# Gem for authentication
gem 'devise'
# Gem to make devise work
gem 'bcrypt', git: 'https://github.com/codahale/bcrypt-ruby.git', :require => 'bcrypt'
# Gem for windows machines
gem 'wdm', '>= 0.1.0' if Gem.win_platform?
# Heroku should use the version of Ruby
ruby '2.3.3'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use sqlite3 for development and test database
gem 'sqlite3'
# Postgres for production database
gem 'pg', group: [:development, :test, :production]
# 12 Factor for Heroku
gem 'rails_12factor',group: :production
# Stripe for taking payments
gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'
# Bootstrap for styling and scripts
gem 'boostrap-sass'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'guard-livereload', '~> 2.5', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
