class Event < ActiveRecord::Base
  belongs_to :person
  attr_accessible :description, :end_time, :inactivated_at, :start_time, :person_id, :activated, :to_label
  #before_filter :set_activated
  def to_label
    "#{self.description} | #{self.person.to_label}"
  end
end
