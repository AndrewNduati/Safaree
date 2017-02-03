require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Safaree
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
 #    MPower::Setup.master_key = "2f784439-01c9-405a-9d4c-6fd925a6b114 "
	# MPower::Setup.public_key = "test_public_zooXMy1xMj5_K3jsFPXESMnxhLo"
	# MPower::Setup.private_key = "test_private_F1xar0gzXgAUkqRLwaY3WIzfO7U"
	# MPower::Setup.mode = "test"
	# MPower::Setup.token = "532234d3f3567bf6f1d3"


	
  end
end
