class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :token
      t.boolean :status
      t.string :ipaddress
      t.string :siteid
      t.text :address1
      t.text :address2
      t.text :address3
      t.string :city
      t.string :state
      t.string :country
      t.integer :zipcode

      t.timestamps
    end
  end
end
