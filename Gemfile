source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

gem 'devise'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Rack 1.4bugs
gem 'rack', '1.3.3'

# to fix execjs.2011/10/01 tyokoyama
gem 'execjs'
gem 'therubyracer', :platforms => :ruby

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
group :test, :development  do
  gem "rspec-rails"
  gem "factory_girl_rails"
  gem "capybara"
  gem "guard-rspec"
  gem "spork", "> 0.9.0.rc"
  gem "guard-spork"
  gem "libnotify"
  gem "rb-inotify"
  gem 'turn', :require => false
end

group :production do
  # gems specifically for Heroku go here
  gem 'pg'
end
