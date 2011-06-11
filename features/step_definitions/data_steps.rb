####################################### Given ######################################

Given /^I have the bugs?:$/ do |bug_table|
  @test_bugs = Data.create_bugs bug_table
end

Given /^I have the bug "([^\"]*)" with the status "([^\"]*)"$/ do |label, status|
  @test_bugs[label] = Data.create_bug :status => status
end

Given /^I have "([^\"]*)" bug$/ do |number_of_bugs|
  Data::create_default_bugs number_of_bugs
end