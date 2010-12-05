class HomeController < ApplicationController
  def index
    @weight = Weight.new
    @weights = Weight.all
  end

end
