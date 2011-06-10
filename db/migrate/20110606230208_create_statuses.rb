class CreateStatuses < ActiveRecord::Migration
  def self.up
    create_table :statuses do |t|
      t.string :name

      t.timestamps
    end

    Status.create :name => 'Closed'
    Status.create :name => 'Open'
  end

  def self.down
    drop_table :statuses
  end
end
