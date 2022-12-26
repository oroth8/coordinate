# frozen_string_literal: true

# Heroku config file
class HerokuConfig < ApplicationConfig
  attr_config :app_id, :app_name,
              :dyno_id, :release_version,
              :slug_commit, :branch, :pr_number

  def review_app?
    pr_number.present?
  end
end
