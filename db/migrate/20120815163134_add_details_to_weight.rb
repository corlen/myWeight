class AddDetailsToWeight < ActiveRecord::Migration
  def self.up
    add_column :weights, :hip, :numeric
  end

  def self.down
    remove_column :weights, :hip
  end
end
