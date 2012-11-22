class AddExtraDetailsToWeight < ActiveRecord::Migration
  def self.up
    add_column :weights, :left_arm, :decimal, :null => true
    add_column :weights, :right_arm, :decimal
    add_column :weights, :left_leg, :decimal
    add_column :weights, :right_leg, :decimal
  end

  def self.down
    remove_column :weights, :right_leg
    remove_column :weights, :left_leg
    remove_column :weights, :right_arm
    remove_column :weights, :left_arm
  end
end
