  class TrialsController < ApplicationController

  def index
    @trials = Trial.limit(50)
  end

  def new
    @trial = Trial.new
  end

  def create
    @trial = Trial.new(params['trial'])
    respond_to do |format|
      if @trial.save
        format.html { redirect_to trials_path , notice: "Trail #{@trial.name} added successfully."}
      else
        format.html { render action: "new" }
      end
    end
  end

  def destroy
    @trial = Trial.find params['id']
    redirect_to trials_path , notice: "Trail #{@trial.name} removed successfully." if @trial.destroy
  end
end
