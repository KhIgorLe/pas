class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :vendor_code, null: false
      t.string :title, null: false
      t.integer :weight, null: false
      t.string :size, null: false
      t.string :color, null: false
      t.float :price, null: false
      t.integer :total, null: false

      t.timestamps
    end
  end
end
