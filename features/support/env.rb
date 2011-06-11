require 'cucumber/rails'
require File.expand_path('../../models/bug', __FILE__)
require File.expand_path('../../components/bug_component', __FILE__)
require File.expand_path('../../components/bug_list_component', __FILE__)

#add blueprints to cuke
require File.expand_path('../../../spec/support/blueprints', __FILE__)

Capybara.default_selector = :css
Capybara.run_server= true

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

World BugComponent
World BugListComponent

Before {@test_bugs = Hash.new}
