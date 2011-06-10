require 'cucumber/rails'
require './features/support/moon'

#add blueprints to cuke
require File.expand_path(File.dirname(__FILE__) + "../../../spec/support/blueprints.rb")

Capybara.default_selector = :css
Capybara.run_server= true

ActionController::Base.allow_rescue = false

World Moon

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

