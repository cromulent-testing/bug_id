require 'ruby-debug'

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
  all_bugs = page.all :css, 'tr.bug'
  bug_summaries = all_bugs.map {|a_row| a_row.find(:css, 'td.summary').text}
  bug_summaries.should include @last_bug_summary
end


