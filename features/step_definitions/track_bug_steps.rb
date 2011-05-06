Given /^I'm on the new bugs page$/ do
  visit new_bug_path
end

When /^I enter the summary "([^"]*)"$/ do |summary|
  fill_in 'Summary', :with => summary
  @last_bug_summary = summary
end

When /^save it$/ do
  click_button 'Create Bug'
end

Then /^it should be visible in on the bugs page$/ do
  #worst test ever!
  page.should have_content @last_bug_summary
end
