# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :news do
    title "MyString"
    subtitle "MyString"
    venue_id "MyString"
    finish "2014-01-04"
    show "2014-01-04"
    start "2014-01-04"
  end
end
