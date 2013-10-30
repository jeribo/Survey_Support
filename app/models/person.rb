class Person < ActiveRecord::Base
  attr_accessible :birthday, 
                  :email, 
                  :fathers_name, 
                  :federal_id, 
                  :first_name, 
                  :last_name, 
                  :mothers_name, 
                  :phone1, 
                  :phone2, 
                  :regional_id, 
                  :social_security, 
                  :addresses_attributes
  has_many :addresses
  has_many :events
  has_many :examinations
  #has_many :answers, through: :examinations
  accepts_nested_attributes_for :addresses, :reject_if => :all_blank, :allow_destroy => true
  validates_presence_of :first_name, :last_name, :mothers_name
  validates_length_of :first_name, :within => 3..30, :allow_blank => true
  validates_numericality_of :federal_id, :allow_blank => true
  validates_uniqueness_of :federal_id, :allow_blank => true  
  def to_label 
    if I18n.locale.to_s == "pt-BR"    
      "#{self.first_name} #{self.last_name} | #{self.mothers_name}"
    else
      "#{self.last_name} , #{self.first_name} | #{self.mothers_name}"
    end
  end
end
