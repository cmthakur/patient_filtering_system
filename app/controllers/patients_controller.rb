class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(params['patient'])
    respond_to do |format|
      if @patient.save
        format.html { redirect_to patients_path , notice: "Patient added successfully."}
      else
        format.html { render action: "new" }
      end
    end
  end

end
