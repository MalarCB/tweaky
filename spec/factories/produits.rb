# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :produit do
    name "MyString"
    imagename "MyString"
    url "MyString"
    prixvente "9.99"
    prixnet "9.99"
    devise "MyString"
    commission "9.99"
    stock 1
    likes 1
    downloads 1
    tags "MyText"
    status false
  end
end
