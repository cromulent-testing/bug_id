class User

  def initialize world
    @world = world
  end

  def create_bug bug
    @world.visit @world.new_bug_path
    @world.fill_in 'Summary', :with => bug.summary
    @world.select bug.status, :from => 'Status'
    @world.click_button 'Create Bug'
  end

  def check_bug_list
    bug_list = []
    @world.visit @world.bugs_path

    @world.within 'table.bugs' do
      bugs_table_rows = @world.all('tr.bug')
      bugs_table_rows.each do | bug_row |
        bug = Test::Bug.new
        bug.summary = bug_row.find('td.summary').text
        bug.status = bug_row.find('td.status').text
        bug_list.push bug
      end
    end
    bug_list
  end

end