# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.3'

gem 'rails', '~> 7.0.4'

gem 'sprockets-rails'

gem 'pg', '~> 1.1'

gem 'puma', '~> 5.0'

gem 'importmap-rails'

gem 'turbo-rails'

gem 'stimulus-rails'

gem 'tailwindcss-rails'

gem 'jbuilder'

gem 'figaro'
gem 'redis', '~> 4.0'
gem 'sidekiq'

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'anyway_config', '~> 2.0'
gem 'bootsnap', require: false
gem 'rubocop-rails', require: false
gem 'rubocop-rspec', require: false
gem 'sentry-rails'
gem 'sentry-ruby'
gem 'sentry-sidekiq'
gem 'sorbet-rails'
gem 'sorbet-runtime'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
end

group :development do
  gem 'migration_signature'
  gem 'sorbet'
  gem 'tapioca', require: false
  gem 'web-console'
end
