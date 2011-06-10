module User

  def user_create_bug bug
    visit new_bug_path
    fill_in 'Description', :with => bug.description
    select bug.status, :from => 'Status'
    click_button 'Create Bug'
    Bug.last.id
  end

  def user_check_bug_list
    bug_list = []
    visit bugs_path

    within 'table.bugs' do
      bugs_table_rows = all('tr.bug')
      bugs_table_rows.each do |bug_row|
        bug = Test::Bug.new
        bug.description = bug_row.find('td.description').text
        bug.status = bug_row.find('td.status').text
        bug_list.push bug
      end
    end
    bug_list
  end

end
