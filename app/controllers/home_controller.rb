class HomeController < ApplicationController
  def index
    @weight = Weight.new
  end

end
