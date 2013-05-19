class TestsController < ApplicationController

  def index
    @trial = Trial.find params['trial_id']
    @tests = Test.where(trial_id: @trial.id)
  end

  def new
    @trial = Trial.find params['trial_id']
    @test = @trial.tests.new
  end


  def create
    trial = Trial.find params['trial_id']
    @test = trial.tests.new(params['test'])
    respond_to do |format|
      if @test.save
        format.html { redirect_to trial_tests_path(trial.id) , notice: "Test added successfully."}
      else
        format.html { render action: "new" }
      end
    end
  end
end
