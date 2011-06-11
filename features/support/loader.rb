#add blueprints to cucumber
require File.expand_path('../../../spec/support/blueprints', __FILE__)

require File.expand_path('../../components/bug_component', __FILE__)
require File.expand_path('../../components/bug_list_component', __FILE__)
require File.expand_path('../../components/data_component', __FILE__)

Capybara.default_selector = :css
Capybara.run_server= true

World BugComponent
World BugListComponent
World DataComponent

Before {@test_bugs = Hash.new}

