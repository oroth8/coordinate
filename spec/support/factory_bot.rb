# spec/support/factory_bot.rb
# https://dev.to/adrianvalenz/setup-rspec-on-a-fresh-rails-7-project-5gp

RSpec.configure do |config|
    config.include FactoryBot::Syntax::Methods
  end