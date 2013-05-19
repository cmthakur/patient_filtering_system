class Patient < ActiveRecord::Base
  attr_accessible :fname, :mname, :lname, :email, :dob, :father_name, :mobile, :phone, :city, :country, :state

  has_many :trials
  has_many :exams
  has_many :patient_answers

  def full_name
    "#{fname} #{mname} #{lname}"
  end

  def address
    "#{city} #{state} #{country}"
  end
end
