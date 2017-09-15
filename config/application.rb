require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ToDo
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    #Action Mailer
    ActionMailer::Base.smtp_settings = {
      :user_name => ENV["SMTP_USERNAME"],
      :password => ENV["SMTP_PASSWORD"],
      :domain => 'localhost',
      :address => 'smtp.sendgrid.net',
      :port => 587,
      :authentication => :plain,
      :enable_starttls_auto => true
    }
    #ENV["smtp_username"]
    #ENV["smtp_password"]

  end

end
