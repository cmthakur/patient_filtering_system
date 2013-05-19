class Exam < ActiveRecord::Base
  attr_accessible :question, :answers, :type, :trial_id
  belongs_to :trial
  has_many :patient_answers

  set_inheritance_column :ruby_type

  def qtype
    types = {
      1 => "Fixed Answer",
      2 => "Short Answer",
      3 => "Multiple Choice"
    }

    types[type.to_i]
  end

end
