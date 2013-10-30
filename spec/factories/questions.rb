# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    survey nil
    description_question "MyText"
    mandatory false
    type_field "MyString"
    activated false
  end
end
