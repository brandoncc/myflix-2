require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env)

module Myflix
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.active_support.escape_html_entities_in_json = true

    config.assets.enabled = true
    config.generators do |g|
      g.orm :active_record
      g.template_engine :haml
    end

    config.autoload_paths << "#{Rails.root}/lib"

    Raven.configure do |config|
      config.dsn = 'https://810dac61b30d4537b0dee066f0303416:bb323c3bca0c42b9844fdfdd7fcf2307@sentry.io/290514'
    end
  end
end
