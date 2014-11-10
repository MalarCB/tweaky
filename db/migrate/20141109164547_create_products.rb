class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :imagename
      t.string :url
      t.decimal :prixvente
      t.decimal :prixnet
      t.decimal :commission
      t.integer :stock
      t.integer :likes
      t.integer :downloads
      t.text :tags
      t.boolean :status

      t.timestamps
    end
  end
end
