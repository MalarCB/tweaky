class Produit < ActiveRecord::Base
  validates_presence_of :name, :imagename, :url, :prixvente, :prixnet, :stock
  before_create :set_default_product_values
  has_many :comments

  def set_default_product_values
    self.likes = 0
    self.status = true
    self.downloads = 0
  end
end
