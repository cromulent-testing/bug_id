When /^I create the bugs:$/ do |bugs_table|
  bugs_table.hashes.each do |bug_hash|
    bug = Test::Bug.new bug_hash
    user.create_bug bug
  end
end

Then /^the bug list should be:$/ do |expected_bugs_table|
  actual_bugs_list = user.check_bug_list
  expected_bug_list =[]

  expected_bugs_table.hashes.each do |bug_hash|
    expected_bug_list.push Test::Bug.new bug_hash
  end

  actual_bugs_list.should == expected_bug_list
end
