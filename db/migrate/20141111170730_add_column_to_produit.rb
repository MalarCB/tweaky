class AddColumnToProduit < ActiveRecord::Migration
  def change
    add_column :produits, :product_desc, :text
  end
end
