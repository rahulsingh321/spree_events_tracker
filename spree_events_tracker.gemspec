# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_events_tracker'
  s.version     = '3.3.2'
  s.summary     = 'Spree Events Tracker is a spree extension used to track various user activities'
  s.description = 'Track keywords search, checkout events, add to cart, remove from cart and other events.'
  s.required_ruby_version = '>= 2.2.7'

  s.author    = ['Nimish Gupta', 'Tanmay Sinha', 'Nimish Mehta', "+ Vinsol Team", "Rahul Singh"]
  s.email     = 'rahul97811@gmail.com'
  s.homepage  = 'https://github.com/rahulsingh321/spree_events_tracker.git'
  s.license   = 'BSD-3'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  spree_version = '>= 4.4.0'
  s.add_dependency 'rails', '~> 6.1.5', '>= 6.1.5'
  s.add_dependency 'spree', spree_version
  s.add_dependency 'spree_backend', spree_version
  s.add_dependency 'spree_frontend', spree_version
  s.add_dependency 'spree_extension'

  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-activemodel-mocks'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
