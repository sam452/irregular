# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name "MyString"
    category "MyString"
    location_name "MyString"
    lattitude "9.99"
    longitude "9.99"
    description "MyText"
    photo_url "MyString"
    offer 1
    expiration "2013-10-19 13:22:26"
  end
end
