class City < ActiveRecord::Base
  belongs_to :state
  attr_accessible :description, :inactivated_at, :state_id, :activated
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |city|
        csv << city.attributes.values_at(*column_names)
      end
    end
  end
  def to_label    
    "#{self.description} | #{self.state.abbreviated}"
  end
end
