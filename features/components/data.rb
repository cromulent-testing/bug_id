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
      bug_hash.keys.each do |key|
        bug_hash[key.downcase] = bug_hash.delete key
      end

      label = bug_hash.delete 'label' || 'test-bug'
      Bug.make bug_hash

      created_bugs[label] = Bug.last.id
    end
    created_bugs
  end

  def self.bug_count
    Bug.count.should
  end
end
