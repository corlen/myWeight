class UserProfileController < ApplicationController
  before_filter :authenticate_user!
  def index
     @user = User.new
     @user = current_user 
  end
# 
  # def edit
    # @user = current_user
  # end
# 
# 
  # def update
    # @user = current_user
# 
    # respond_to do |format|
      # if @user.update_attributes(current_user)
        # format.html { redirect_to(@user, :notice => 'Profile was successfully updated.') }
      # else
        # format.html { render :action => "edit" }
      # end
    # end
  # end

end
