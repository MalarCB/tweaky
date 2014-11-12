class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :telephone_1, :string
    add_column :users, :telephone_2, :string
  end
end
