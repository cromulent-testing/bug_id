module BugListComponent
  def bug_list
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

  def bug_count
    visit bugs_path unless current_path == bugs_path
    all('tr.bug').size.to_s
  end
end