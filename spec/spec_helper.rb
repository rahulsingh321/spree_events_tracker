# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'

require File.expand_path('../dummy/config/environment.rb', __FILE__)

require 'spree_dev_tools/rspec/spec_helper'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join(File.dirname(__FILE__), 'support/**/*.rb')].sort.each { |f| require f }

# RSpec.configure do |config|
#   config.infer_spec_type_from_file_location!
#   config.raise_errors_for_deprecations!
#   config.use_transactional_fixtures = false

#   config.include Spree::TestingSupport::UrlHelpers
#   config.include Spree::TestingSupport::ControllerRequests, type: :controller

#   config.include(Shoulda::Matchers::ActiveModel, type: :model)
#   config.include(Shoulda::Matchers::ActiveRecord, type: :model)

#   config.mock_with :rspec do |mock|
#     mock.syntax = [:should, :expect]
#   end
#   config.color = true

#   config.fail_fast = ENV['FAIL_FAST'] || false
#   config.order = "random"
# end
