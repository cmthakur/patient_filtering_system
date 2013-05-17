class Test < ActiveRecord::Base
  attr_accessible :question, :answer, :type
  belongs_to :trial
end
