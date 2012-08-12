class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @weight = Weight.new
    @weights = Weight.find(:all, :conditions => ["user_id = ?", current_user.id], :order => "date DESC")
  end

end
