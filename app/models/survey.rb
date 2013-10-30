class Survey < ActiveRecord::Base
  attr_accessible :activated, :description, :questions_attributes
  has_many :questions
  accepts_nested_attributes_for :questions, :reject_if => :all_blank, :allow_destroy => true
  def to_label
    "#{self.description}"
  end
end
