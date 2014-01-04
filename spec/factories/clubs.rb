# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :club do
    address "MyText"
    closed "MyString"
    contacts "MyString"
    email "MyString"
    fax "MyString"
    instructions "MyText"
    latitude ""
    longitude ""
    name "MyString"
    note "MyText"
    path "MyText"
    position "MyString"
    season "MyString"
    telephone "MyString"
    website "MyString"
    image_id 1
  end
end
