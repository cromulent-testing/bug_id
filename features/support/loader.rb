#add blueprints to cucumber
require File.expand_path('../../../spec/support/blueprints', __FILE__)

Dir[File.dirname(__FILE__) + '/../components/*.rb'].each {|file| require file}

Capybara.default_selector = :css
Capybara.run_server= true

World BugComponent
World BugListComponent
World DataComponent

Before { @test_bugs = Hash.new }

