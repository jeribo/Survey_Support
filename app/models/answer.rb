class Answer < ActiveRecord::Base
  belongs_to :examination
  belongs_to :question
  attr_accessible :set, :question_id, :examination_id
end
