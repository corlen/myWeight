class AddDetailsToWeights < ActiveRecord::Migration
  def self.up
    add_column :weights, :waist, :decimal
    add_column :weights, :neck, :decimal
    add_column :weights, :height, :decimal
    add_column :weights, :perc_fat, :decimal
  end

  def self.down
    remove_column :weights, :perc_fat
    remove_column :weights, :height
    remove_column :weights, :neck
    remove_column :weights, :waist
  end
end
