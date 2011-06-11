class Data

  def self.create_bug
    Bug.make
  end

  def self.create_bugs bug_table
    created_bugs = Hash.new
    bug_table.hashes.each do |bug_hash|
      make_me = {}
      make_me[:description] = bug_hash['Description'] if bug_hash['Description']
      make_me[:status] = bug_hash['status'] if bug_hash['status']

      Bug.make make_me

      created_bugs[bug_hash['Label']] = Bug.last
    end
    created_bugs
  end
end
