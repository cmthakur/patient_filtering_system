class Trial < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :vacancies
  has_many :exams
  has_many :patients
end
