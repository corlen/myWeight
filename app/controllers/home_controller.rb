class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @weight = Weight.new
    @weights = current_user.weights.order("date DESC")
  end

end
