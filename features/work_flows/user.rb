class User
  def default
  end

  def create_bugs number_to_create = 1
    number_to_create.each do
      bug_model = Test::Bug.new
      bug_model.default

      bug = Bug.new
      bug.summary = bug_model.summary
      bug.save
    end
  end
end
