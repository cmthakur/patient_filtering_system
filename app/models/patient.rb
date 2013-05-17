class Patient < ActiveRecord::Base
  attr_accessible :fname, :mname, :lname, :email, :dob, :father_name, :mobile, :phone, :city, :country, :state

  has_many :trials
end
