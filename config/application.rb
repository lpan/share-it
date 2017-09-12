require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Shareit
  class Application < Rails::Application
    ActiveSupport::JSON::Encoding.time_precision = 0
    ActiveModelSerializers.config.adapter = :json

    config.load_defaults 5.1
  end
end
