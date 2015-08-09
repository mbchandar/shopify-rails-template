class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :provider, limit: 40
      t.string :url
      t.string :access_token

      t.timestamps null: false
    end
    add_index :stores, [:url], unique: true
  end
end
