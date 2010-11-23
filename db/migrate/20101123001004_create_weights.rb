class CreateWeights < ActiveRecord::Migration
  def self.up
    create_table :weights do |t|
      t.decimal :weight
      t.datetime :date

      t.timestamps
    end
  end

  def self.down
    drop_table :weights
  end
end
