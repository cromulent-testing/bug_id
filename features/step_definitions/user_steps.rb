When /^I create the bugs:$/ do |bugs_table|
  bugs_table.hashes.each do |bug_hash|
    bug = Test::Bug.new bug_hash
    user.create_bug bug
  end
end