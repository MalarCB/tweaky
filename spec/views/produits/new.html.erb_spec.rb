require 'spec_helper'

describe "produits/new" do
  before(:each) do
    assign(:produit, stub_model(Produit,
      :name => "MyString",
      :imagename => "MyString",
      :url => "MyString",
      :prixvente => "9.99",
      :prixnet => "9.99",
      :devise => "MyString",
      :commission => "9.99",
      :stock => 1,
      :likes => 1,
      :downloads => 1,
      :tags => "MyText",
      :status => false
    ).as_new_record)
  end

  it "renders new produit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", produits_path, "post" do
      assert_select "input#produit_name[name=?]", "produit[name]"
      assert_select "input#produit_imagename[name=?]", "produit[imagename]"
      assert_select "input#produit_url[name=?]", "produit[url]"
      assert_select "input#produit_prixvente[name=?]", "produit[prixvente]"
      assert_select "input#produit_prixnet[name=?]", "produit[prixnet]"
      assert_select "input#produit_devise[name=?]", "produit[devise]"
      assert_select "input#produit_commission[name=?]", "produit[commission]"
      assert_select "input#produit_stock[name=?]", "produit[stock]"
      assert_select "input#produit_likes[name=?]", "produit[likes]"
      assert_select "input#produit_downloads[name=?]", "produit[downloads]"
      assert_select "textarea#produit_tags[name=?]", "produit[tags]"
      assert_select "input#produit_status[name=?]", "produit[status]"
    end
  end
end
