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

end