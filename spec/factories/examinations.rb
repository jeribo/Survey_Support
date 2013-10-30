# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :examination do
    person nil
    survey nil
    reference_date "2013-10-26"
  end
end
