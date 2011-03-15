class Weight < ActiveRecord::Base
  validates :weight,  :presence => true
  validates :weight, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :date, :presence => true
end
