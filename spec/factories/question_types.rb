# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question_type do
    description "MyText"
    survey_type nil
    activated false
  end
end
