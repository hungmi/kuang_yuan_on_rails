require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module KuangYuanOnRails
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.to_prepare do
    	Devise::SessionsController.layout "devise"
    end
    config.i18n.default_locale = "zh-TW"
    config.active_job.queue_adapter = :sidekiq
  end
end
