class HomeController < ApplicationController
  def index
    @weight = Weight.new
    @weights = Weight.find(:all, :order => 'date')
  end

end
