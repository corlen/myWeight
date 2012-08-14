class RemoveDetailsFromWeights < ActiveRecord::Migration
  def self.up
    remove_column :weights, :height
    remove_column :weights, :perc_fat
  end

  def self.down
    add_column :weights, :perc_fat, :numeric
    add_column :weights, :height, :numeric
  end
end
