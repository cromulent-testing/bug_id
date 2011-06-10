class CreateBugs < ActiveRecord::Migration
  def self.up
    create_table :bugs do |t|
      t.text :description
      t.string :status
      t.timestamps
    end
  end

  def self.down
    drop_table :bugs
  end
end
