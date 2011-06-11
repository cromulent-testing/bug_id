####################################### When #######################################

When /^I view the bugs list$/ do
  visit bugs_path
end

####################################### Then #######################################

Then /^the bug list should be:$/ do |expected_bugs_table|
  actual_bugs_list = bug_list
  expected_bug_list =[]

  expected_bugs_table.hashes.each do |bug_hash|
    expected_bug_list.push bug_hash
  end
  actual_bugs_list.should == expected_bug_list
end

Then /^the bugs list should have "([^\"]*)" bug$/ do |expected_bug_count|
  #MB/RB adding classes the html to make it easier to test
  bug_count.should == expected_bug_count
end

Then /^the bugs list should have "([^\"]*)" bugs$/ do |expected_bug_count|
  #MB/RB adding classes the html to make it easier to test
  bug_count.should == expected_bug_count
end