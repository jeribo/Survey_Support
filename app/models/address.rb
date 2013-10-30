class Address < ActiveRecord::Base
  belongs_to :city
  belongs_to :person
  attr_accessible :complement, :number, :postal_code, :street, :person_id
end
