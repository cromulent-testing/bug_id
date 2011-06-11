class Data

  def self.create_bug options_hash
    Bug.make options_hash
    Bug.last.id
  end

  def self.create_default_bugs bug_count
    bug_count.each do
      Bug.make
    end
  end

  def self.create_bugs bug_table
    created_bugs = Hash.new
    bug_table.hashes.each do |bug_hash|
      make_me = {}
      make_me[:description] = bug_hash['Description'] if bug_hash['Description']
      make_me[:status] = bug_hash['Status'] if bug_hash['Status']

      Bug.make make_me

      created_bugs[bug_hash['Label']] = Bug.last.id
    end
    created_bugs
  end

  def self.bug_count
    Bug.count.should
  end
end
