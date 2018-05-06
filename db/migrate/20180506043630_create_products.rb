class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :seller_id
      t.string :product_name
      t.text :description
      t.integer :price
      t.text :image_data
      t.integer :quantity_available
      t.timestamp :no_longer_selling

      t.timestamps
    end
  end
end
