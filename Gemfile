source 'https://rubygems.org'
ruby '2.0.0'

# FRAMEWORK
gem 'rails', '3.2.13'

# SERVER
gem 'unicorn'
gem 'unicorn-rails'
group :test, :development do
  gem 'foreman'
end

# DB
gem 'sqlite3'
gem 'pg', '~> 0.16.0'
gem 'taps'

# JSON API
gem 'rocket_pants'
gem 'active_model_serializers'

# GEO
gem 'geocoder'

# CACHE
gem 'rack-cache'
gem 'memcachier'
gem 'dalli'
gem 'kgio'

# MODELS
gem 'pacecar'

# TESTING
group :test, :development do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'simplecov', :require => false
  gem 'faker'
  gem 'database_cleaner'
  gem 'rest-client'
end

# ERROR HANDLING
group :development do
  gem 'better_errors'
end

# DEVELOPMENT ASSISTANCE
group :development do
  gem 'annotate'
end

# GUARD
group :development, :test do
  gem 'rb-fsevent'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'guard-annotate'
end
