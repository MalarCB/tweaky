class AddColumToProduits < ActiveRecord::Migration
  def change
    add_column :produits, :vues, :integer
    add_column :produits, :admin_ip, :string
  end
end
