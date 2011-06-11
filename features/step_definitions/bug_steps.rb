####################################### Given ######################################

Given /^I'm creating a bug$/ do
  visit new_bug_path
end

####################################### When #######################################

When /^I create the bugs?:$/ do |bugs_table|
  bugs_table.hashes.each do |bug_hash|
    label = bug_hash.delete 'Label' || 'test-bug'
    bug_id = bug_create bug_hash
    @test_bugs[label] = bug_id
  end
end

When /^I update the bug to be:$/ do |bug_updates|
  bug_updates.hashes.each do |bug_hash|
    label = bug_hash.delete 'Label' || 'test-bug'
    bug_update @test_bugs[label], bug_hash
  end
end

When /^the default status status is "([^\"]*)"$/ do |expected_status|
  bug_get_selected_status.should == expected_status
end

When /^I close "([^\"]*)"$/ do |bug_label|
  bug_close @test_bugs[bug_label]
end

####################################### Then #######################################

Then /^I the statuses available to me are "([^\"]*)"$/ do |expected_statuses|
  expected_statuses = expected_statuses.split(',').each{|s| s.strip!}
  bug_get_available_statues.should == expected_statuses
end

Then /^the status for "([^\"]*)" is "([^\"]*)"$/ do |bug_label, expected_status|
  bug_get_status(@test_bugs[bug_label]).should == expected_status
end