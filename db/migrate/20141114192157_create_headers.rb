class CreateHeaders < ActiveRecord::Migration
  def change
    create_table :headers do |t|
      t.string :heading
      t.string :imgurl
      t.boolean :status
      t.string :detailurl

      t.timestamps
    end
  end
end
