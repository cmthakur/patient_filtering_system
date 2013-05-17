class Trial < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :vacancies
  has_many :tests
  has_many :patients
end
