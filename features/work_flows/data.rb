class Data

  def self.create_bug
    bug_model = Test::Bug.new
    bug_model.default

    bug = Bug.new
    bug.description = bug_model.description
    bug.status = bug_model.status
    bug.save
  end

  def self.create_bugs number_to_create = 2
    number_to_create.each do
      create_bug
    end
  end

end
