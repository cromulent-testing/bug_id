#################################### Given ####################################

Given /^I'm on the new bugs page$/ do
  visit new_bug_path
end

#################################### When #####################################

When /^I enter the summary "([^"]*)"$/ do |summary|
  fill_in 'Summary', :with => summary
  @current_bug_summary = summary
end

When /^save it$/ do
  click_button 'Create Bug'
  @current_bug = Bug.new
  @current_bug.title= @current_bug_title
  @current_bug.summary= @current_bug_summary
end

When /^I enter the title "([^\"]*)"$/ do | title |
  fill_in 'Title', :with => title
  @current_bug_title = title
end

#################################### Then #####################################

Then /^it should be visible in on the bugs page$/ do
  all_bugs = page.all :css, 'tr.bug'

  found = false

  all_bugs.each do |a_row|
    title = a_row.find(:css, 'td.title').text
    summary = a_row.find(:css, 'td.summary').text

    if title == @current_bug.title && summary == @current_bug.summary
      found = true
      break
    end
  end

  found.should be_true, "Couldn't find the bug '#{@current_bug}' in the list"
end


Then /^I should see the error div with "([^\"]*)" error$/ do |error_count|
  error_explanation = page.find :css, '#error_explanation'

  error_explanation.all(:css, 'ul li').count.should equal error_count.to_i

  error_heading = error_explanation.find(:css, 'h2').text
  error_heading.should include error_count
end
