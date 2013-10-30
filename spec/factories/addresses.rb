# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    street "MyString"
    number "MyString"
    complement "MyString"
    postal_code "MyString"
    city nil
  end
end
