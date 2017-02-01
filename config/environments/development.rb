PlanCharacters::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.eager_load = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  config.assets.compress = false

  # Devise default url options
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

  # DEVELOPMENT S3 settings for Paperclip uploads ON DEVELOPMENT
  config.paperclip_defaults = {
    storage: :s3,
    s3_protocol: 'http',
    s3_credentials: {
      bucket: ENV['AWS_BUCKET'],
      access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
    }
  }

  default_url_options[:host] = 'localhost:3000'

  # Set test-mode Stripe API key
  Stripe.api_key = "sk_test_v37uWbseyPct6PpsfjTa3y1l"
  config.stripe_publishable_key = 'pk_test_eXI4iyJ2gR9UOGJyJERvDlHF'
end
