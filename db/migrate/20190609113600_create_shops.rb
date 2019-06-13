class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :metro_station
      t.string :city, null: false

      t.timestamps
    end
  end
end
