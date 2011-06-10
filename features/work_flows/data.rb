class Data

  def self.create_bug
    Bug.make
  end

  def self.create_bugs number_to_create = 2
    number_to_create.each do
      create_bug
    end
  end

end
