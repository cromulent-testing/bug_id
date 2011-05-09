class AddTitleToBug < ActiveRecord::Migration
  def self.up
    add_column :bugs, :title, :text
  end

  def self.down
    remove_column :bugs, :title
  end
end
