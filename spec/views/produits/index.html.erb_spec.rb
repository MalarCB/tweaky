require 'spec_helper'

describe "produits/index" do
  before(:each) do
    assign(:produits, [
      stub_model(Produit,
        :name => "Name",
        :imagename => "Imagename",
        :url => "Url",
        :prixvente => "9.99",
        :prixnet => "9.99",
        :devise => "Devise",
        :commission => "9.99",
        :stock => 1,
        :likes => 2,
        :downloads => 3,
        :tags => "MyText",
        :status => false
      ),
      stub_model(Produit,
        :name => "Name",
        :imagename => "Imagename",
        :url => "Url",
        :prixvente => "9.99",
        :prixnet => "9.99",
        :devise => "Devise",
        :commission => "9.99",
        :stock => 1,
        :likes => 2,
        :downloads => 3,
        :tags => "MyText",
        :status => false
      )
    ])
  end

  it "renders a list of produits" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Imagename".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Devise".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
