class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :sku, limit: 10

      t.timestamps
    end
    add_index :products, :name
    add_index :products, :sku, unique: true
  end
end
