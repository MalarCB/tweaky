# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comments do
    commenter "MyString"
    body "MyText"
    produit nil
  end
end
