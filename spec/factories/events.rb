# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    person nil
    description "MyText"
    start_time "2013-10-07 20:08:03"
    end_time "2013-10-07 20:08:03"
    inactivated_at "2013-10-07 20:08:03"
  end
end
