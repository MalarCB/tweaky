require 'spec_helper'

describe "produits/show" do
  before(:each) do
    @produit = assign(:produit, stub_model(Produit,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Imagename/)
    rendered.should match(/Url/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Devise/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
