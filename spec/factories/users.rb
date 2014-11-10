# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "MyString"
    password "MyString"
    token "MyString"
    status false
    ipaddress "MyString"
    siteid "MyString"
    address1 "MyText"
    address2 "MyText"
    address3 "MyText"
    city "MyString"
    state "MyString"
    country "MyString"
    zipcode 1
  end
end
