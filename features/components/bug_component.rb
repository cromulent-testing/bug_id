module BugComponent
  def bug_update big_id, bug_hash
    visit edit_bug_path(big_id)
    bug_fill_in_details(bug_hash)
  end

  def bug_create bug_hash
    visit new_bug_path
    bug_fill_in_bug_details(bug_hash)
  end

  def bug_get_available_statues
    visit new_bug_path unless current_path == new_bug_path
    all('select#bug_status option').map{|option| option.text}
  end

  def bug_get_selected_status
    find('select#bug_status').value
  end

  private
  def bug_fill_in_details(bug_hash)
    bug = Test::Bug.new bug_hash

    fill_in 'Description', :with => bug.description
    select bug.status, :from => 'Status'
    click_button 'bug_submit'
    Bug.last.id
  end
end