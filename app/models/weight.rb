class Weight < ActiveRecord::Base
  validates :weight,  :presence => true
  validates :date, :presence => true
end
