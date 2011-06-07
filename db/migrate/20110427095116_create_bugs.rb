class CreateBugs < ActiveRecord::Migration
  def self.up
    create_table :bugs do |t|
      t.text :summary
      t.integer :status_id
      t.timestamps
    end
  end

  def self.down
    drop_table :bugs
  end
end
