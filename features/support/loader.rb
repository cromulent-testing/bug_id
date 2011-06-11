require File.expand_path('../../models/bug', __FILE__)
require File.expand_path('../../components/bug_component', __FILE__)
require File.expand_path('../../components/bug_list_component', __FILE__)

#add blueprints to cuke
require File.expand_path('../../../spec/support/blueprints', __FILE__)

Capybara.default_selector = :css
Capybara.run_server= true

World BugComponent
World BugListComponent

Before {@test_bugs = Hash.new}

