source 'https://rubygems.org'
ruby '2.1.2'

gem 'bootstrap-sass', '3.1.1.1'
gem 'bootstrap_form'
gem 'bcrypt'
gem 'coffee-rails'
gem 'rails', '4.1.1'
gem 'haml-rails'
gem 'sass-rails'
gem 'uglifier'
gem 'jquery-rails'
gem 'pg'
gem 'sidekiq', '4.0.0'
gem 'unicorn'
gem 'sentry-raven'
gem 'carrierwave'
gem 'mini_magick'
gem 'carrierwave-aws'

group :development do
  gem 'thin'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'letter_opener'
end

group :development, :test do
  gem 'pry'
  gem 'pry-nav'
  gem 'rspec-rails', '2.99'
  gem 'fabrication'
  gem 'faker'
end

group :test do
  gem 'database_cleaner', '1.4.1'
  gem 'shoulda-matchers', '2.7.0'
  gem 'vcr', '2.9.3'
  gem 'capybara'
  gem 'capybara-email'
  gem 'launchy'
end

group :production, :staging do
  gem 'rails_12factor'
end
