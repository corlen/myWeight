class AddDetailsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :height, :numeric
    add_column :users, :perc_fat, :numeric
  end

  def self.down
    remove_column :users, :perc_fat
    remove_column :users, :height
  end
end
