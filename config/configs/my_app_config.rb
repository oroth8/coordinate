# frozen_string_literal: true

# App Config
class MyAppConfig < ApplicationConfig
  attr_config :host, :port, # The address of the server
              :asset_host, # Custom URL for assets
              seo_enabled: false # Enable SEO features (robots.txt, etc.)

  def ssl?
    port == 443
  end

  def asset_host
    super || begin
      proto = ssl? ? 'https://' : 'http://'
      port_addr = ":#{port}" unless port == 443 || port == 80

      "#{proto}#{host}#{port_addr}"
    end
  end
end
