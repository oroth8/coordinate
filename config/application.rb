# frozen_string_literal: true

require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_mailbox/engine'
require 'action_text/engine'
require 'action_view/railtie'
require 'action_cable/engine'
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Coordinate
  # application class
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.active_job.queue_adapter = :sidekiq

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Don't generate system test files.
    config.generators.system_tests = nil

    config.my_app = MyAppConfig
    config.heroku = HerokuConfig

    # Set project hostname if missing.
    # In production, we set the real hostname via ENV['MY_PROJECT_HOST']
    config.my_app.host = "#{config.heroku.app_name}.herokuapp.com" if config.my_app.host.blank?

    config.action_mailer.default_url_options = {
      host: config.my_app.host,
      port: config.my_app.port,
      protocol: config.my_app.ssl? ? 'https' : 'http'
    }
    config.action_mailer.asset_host = config.my_app.asset_host
  end
end
