class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers  
  attr_accessible :activated, :description_question, :mandatory, :type_field, :survey_id, :answers_attributes
  def to_label
    "#{self.description_question}"
  end
end
