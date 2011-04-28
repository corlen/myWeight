class HomeController < ApplicationController
  def index
    @weight = Weight.new
    @weights = Weight.order('date DESC').all
  end

end
