# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    examination ""
    question nil
    set "MyText"
  end
end
