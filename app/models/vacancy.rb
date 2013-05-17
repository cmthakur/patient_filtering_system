class Vacancy < ActiveRecord::Base
  attr_accessible :trial_period, :max_subject, :closing_date
  belongs_to :trial
end
