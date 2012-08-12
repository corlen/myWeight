class AddUserToWeights < ActiveRecord::Migration
  def self.up
    add_column :weights, :user_id, :integer
  end

  def self.down
    remove_column :weights, :user_id
  end
end
