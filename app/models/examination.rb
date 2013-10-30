class Examination < ActiveRecord::Base
  belongs_to :person
  belongs_to :survey
  has_many :answers
  attr_accessible :reference_date, :answers_attributes, :person_id, :survey_id
  accepts_nested_attributes_for :answers, :reject_if => :all_blank, :allow_destroy => true

end
