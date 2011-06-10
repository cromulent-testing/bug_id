When /^I create the bugs:$/ do |bugs_table|
  bugs_table.hashes.each do |bug_hash|
    bug = Test::Bug.new bug_hash

    @test_bugs = Hash.new
    bug.id = user_create_bug bug
    @test_bugs[bug_hash['Label']] = bug
  end
end

Then /^the bug list should be:$/ do |expected_bugs_table|
  actual_bugs_list = user_check_bug_list
  expected_bug_list =[]

  expected_bugs_table.hashes.each do |bug_hash|
    expected_bug_list.push Test::Bug.new bug_hash
  end

  actual_bugs_list.length.times do |x|
    actual_bugs_list[x].description.should == expected_bug_list[x].description
    actual_bugs_list[x].status.should == expected_bug_list[x].status
  end
end

Given /^I'm creating a bug$/ do
  visit new_bug_path
end

Then /^I the statuses available to me are "([^\"]*)"$/ do |expected_statuses|
  pending
end

When /^I update "([^\"]*)" to be$/ do |bug_label, bug_updates|
  puts @test_bugs[bug_label].inspect
  pending
end