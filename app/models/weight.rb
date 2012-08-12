class Weight < ActiveRecord::Base
  belongs_to :user
  
  validates :weight,    :presence => true
  validates :waist,     :presence => true
  validates :neck,      :presence => true
  validates :height,    :presence => true
  validates :perc_fat,  :presence => true
  validates :weight, :numericality => {:greater_than_or_equal_to => 0.01}
end
