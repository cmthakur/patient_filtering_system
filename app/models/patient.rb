class Patient < ActiveRecord::Base
  attr_accessible :fname, :mname, :lname, :email, :dob, :father_name, :mobile, :phone, :city, :country, :state, :trial_id

  belongs_to :trial
  has_many :exams
  has_many :patient_answers

  def full_name
    "#{fname} #{mname} #{lname}"
  end

  def address
    "#{city} #{state} #{country}"
  end

  def result
    result = {}
    exam_ids = trial.exams.map(&:id)
    patient_answers.where('exam_id in (?)', exam_ids).map do |p_answer|
     exam = p_answer.exam
     question = exam.question
     answer = exam.answers
     my_answer = p_answer.answer
     remark = p_answer.remark
     result.merge!({question => [answer, my_answer, remark]})
   end
   result
 end
end
