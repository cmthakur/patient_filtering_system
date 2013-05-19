class PatientAnswer < ActiveRecord::Base
  attr_accessible :answer, :patient_id, :exam_id, :status
  belongs_to :exam
  belongs_to :patient
end
