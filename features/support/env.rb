require 'cucumber/rails'
require './features/support/moon'

Capybara.default_selector = :css
Capybara.run_server= true

#ActionController::Base.allow_rescue = false

World Moon

# Remove/comment out the lines below if your app doesn't have a database.
#begin
#  DatabaseCleaner.strategy = :transaction
#rescue NameError
#  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
#end

