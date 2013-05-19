class PatientAnswer < ActiveRecord::Base
  attr_accessible :answer, :patient_id, :exam_id, :status
  belongs_to :exam
  belongs_to :patient

  def remark
    statuses = {
      0 => "Wrong",
      1 => "Right",
    }

    statuses[status.to_i]
  end
end
