class WeightsController < ApplicationController
  before_filter :authenticate_user!
  def show
    @weight = Weight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @weight = Weight.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @weight = Weight.find(params[:id])
  end

  def create

    @weights = Weight.all
    @weight = Weight.new(params[:weight])
    @weight.date = Time.now
    @weight.user_id = current_user.id

    respond_to do |format|
      if @weight.save
        format.html { redirect_to(root_path, :notice => 'Weight was successfully created.') }
      else
        format.html { render :action => "home/index" }
      end
    end
  end

  def update
    @weight = Weight.find(params[:id])
    temp_date = @weight.date
    @weight.date = DateTime.new(temp_date.year,temp_date.month,temp_date.day,temp_date.hour,temp_date.min,temp_date.sec)

    respond_to do |format|
      if @weight.update_attributes(params[:weight])
        format.html { redirect_to(root_path, :notice => 'Weight was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @weight = Weight.find(params[:id])
    @weight.destroy

    respond_to do |format|
      format.html { redirect_to(root_path, :notice => 'Weight was deleted.') }
    end
  end
end
