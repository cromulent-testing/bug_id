require 'cucumber/rails'

#add blueprints to cuke
require File.expand_path('../../../spec/support/blueprints.rb', __FILE__)

require File.expand_path('../../work_flows/user', __FILE__)

Capybara.default_selector = :css
Capybara.run_server= true

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end


World User

