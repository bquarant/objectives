source 'https://rubygems.org'
gem 'rails', '4.0.0.rc1'
gem 'sass-rails', '~> 4.0.0.rc1'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.0.1'
gem 'devise'
gem 'simple_form'
gem 'random_record'
gem 'thin'
gem 'rails-erd'
gem 'rails_12factor', group: :production

group :development do
  gem 'rspec-rails', '2.11.0'
  # TODO: We should be using postgres in development as well, I think I need to install it?
  gem 'sqlite3'
end

group :test do
  gem 'rspec-rails', '2.11.0'
  gem 'webrat', '0.7.1'
end

group :production do
  # gems specifically for Heroku go here
  gem "pg"
end