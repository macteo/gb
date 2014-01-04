# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :venue do
    address "MyText"
    category 1
    closed "MyString"
    contacts "MyText"
    desc "MyText"
    email "MyString"
    instructions "MyText"
    latitude ""
    longitude ""
    name "MyString"
    note "MyText"
    path "MyText"
    telephone "MyString"
    website "MyString"
    image_id 1
    club_id "MyString"
  end
end
