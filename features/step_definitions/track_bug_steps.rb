When /^I create a bug with the summary "([^\"]*)"$/ do |summary|
  visit new_bug_path
  fill_in 'Summary', :with => summary
  click_button 'Create Bug'
end

Then /^the bugs list should have 1 bug$/ do
  visit bugs_path
  #MB/RB adding classes the html to make it easier to test
  all('td.summary').count.should == 1
end

Given /^I have "([^\"]*)" bug$/ do |number_of_bugs|
  user = User.new
  user.create_bugs number_of_bugs
end

When /^I delete a bug$/ do

end

Then /^the bugs list should have "([^\"]*)" bug$/ do |expected_bug_count|
  Bug.count.should == expected_bug_count
end