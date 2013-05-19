class PatientsController < ApplicationController

  def index
    @patients = Patient.where(trial_id: params['trial_id'])
  end

  def new
    @patient = Patient.new
  end

  def create
    @trial = Trial.last
    @patient = @trial.patients.new(params['patient'])
    respond_to do |format|
      if @patient.save
        session['exams'] = [0]
        format.html { redirect_to take_exam_patient_path(@patient.id, { trial_id: @trial.id }) , notice: "Patient added successfully."}
      else
        format.html { render action: "new" }
      end
    end
  end

  def take_exam
    @patient = Patient.find params["id"]
    @trial = Trial.find params["trial_id"]
    @exam = @trial.exams.where('id not in (?)', session['exams']).last
    @progress = ((session['exams'].count-1)/@trial.exams.count.to_f)*100
  end

  def finalize_exam
    exam = Exam.find params['id']
    answer = params['answer']
    status = answer.downcase == exam.answers.downcase ? 1 : 0
    exam.patient_answers.create(answer: answer, status: status, patient_id: params['patient_id'])
    session['exams'] << params['id'].to_i
    is_more = exam.trial.exams.where('id not in (?)', session['exams']).present?

    if is_more
      redirect_to take_exam_patient_path(params['patient_id'], {trial_id: exam.trial_id})
    else
      session['exams'] = [0]
      render :text => "The exam is over. Thank you."
    end
  end

end
