# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    first_name "MyString"
    last_name "MyString"
    federal_id "MyString"
    regional_id "MyString"
    social_security "MyString"
    mothers_name "MyString"
    fathers_name "MyString"
    birthday "2013-10-06"
    phone1 "MyString"
    phone2 "MyString"
    email "MyString"
  end
end
