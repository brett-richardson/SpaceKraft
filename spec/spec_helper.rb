ENV[ "RAILS_ENV" ] ||= 'test'
require File.expand_path( "../../config/environment", __FILE__ )
require 'rspec/rails'
require 'rubygems'
require 'spork'

Spork.prefork do
	 # Loading more in this block will cause your tests to run faster. However,
	 # if you change any configuration or code from libraries loaded here, you'll
	 # need to restart spork for it take effect.
end

Spork.each_run do
	 # This code will be run each time you run your specs.
end

# --- Instructions ---
# - Sort through your spec_helper file. Place as much environment loading
#	 code that you don't normally modify during development in the
#	 Spork.prefork block.
# - Place the rest under Spork.each_run block
# - Any code that is left outside of the blocks will be ran during preforking
#	 and during each_run!
# - These instructions should self-destruct in 10 seconds.	If they don't,
#	 feel free to delete them.
#

Dir[ Rails.root.join( "spec/support/**/*.rb" ) ].each { | f | require f }

RSpec.configure do | config |
	config.include Devise::TestHelpers, :type => :controller
	config.mock_with :rspec

	# Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
	config.fixture_path = "#{::Rails.root}/spec/fixtures"
	config.use_transactional_fixtures = true

	### Part of a Spork hack. See http://bit.ly/arY19y
	# Emulate initializer set_clear_dependencies_hook in
	# railties/lib/rails/application/bootstrap.rb
	ActiveSupport::Dependencies.clear
end
