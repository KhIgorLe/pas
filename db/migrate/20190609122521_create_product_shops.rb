class CreateProductShops < ActiveRecord::Migration[5.2]
  def change
    create_table :product_shops do |t|
      t.references :product, foreign_key: true
      t.references :shop, foreign_key: true
      t.integer :amount, null: false

      t.timestamps
    end
  end
end
