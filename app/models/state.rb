class State < ActiveRecord::Base
  attr_accessible :abbreviated, :description, :inactivated_at, :activated
  attr_accessor :activated
  def to_label    
    "#{self.description}"
  end  
  def activated?
    unless self.inactivated_at = nil then
      self.inactivated_at > Time.current
    else
      true
    end
  end
end
