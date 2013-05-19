class ExamsController < ApplicationController

  def index
    @trial = Trial.find params['trial_id']
    @exams = Exam.where(trial_id: @trial.id)
  end

  def new
    @trial = Trial.find params['trial_id']
    @exam = @trial.exams.new
  end


  def create
    trial = Trial.find params['trial_id']
    @exam = trial.exams.new(params['exam'])
    respond_to do |format|
      if @exam.save
        format.html { redirect_to trial_exams_path(trial.id) , notice: "Exam added successfully."}
      else
        format.html { render action: "new" }
      end
    end
  end
end
