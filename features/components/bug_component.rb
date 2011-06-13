module BugComponent
  def bug_close bug_id
    visit edit_bug_path(bug_id)
    bug_fill_in_details({'Status' => 'Closed'})
  end

  def bug_update bug_id, bug_hash
    visit edit_bug_path(bug_id) unless current_path == edit_bug_path(bug_id)
    bug_fill_in_details(bug_hash)
  end

  def bug_create bug_hash
    visit new_bug_path
    bug_fill_in_details(bug_hash)
  end

  def bug_get_status bug_id
    visit edit_bug_path(bug_id)
    bug_get_selected_status
  end

  def bug_get_available_statues
    visit new_bug_path unless current_path == new_bug_path
    all('select#bug_status option').map { |option| option.text }
  end

  def bug_get_selected_status
    find('select#bug_status').value
  end

  private

  def bug_fill_in_details(bug_hash)
    fill_in 'Description', :with => bug_hash['Description'] if bug_hash['Description']
    select bug_hash['Status'], :from => 'Status' if bug_hash['Status']
    click_button 'bug_submit'
    Bug.last.id
  end
end