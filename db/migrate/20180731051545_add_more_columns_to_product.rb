class AddMoreColumnsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :latitude, :decimal
    add_column :products, :longitude, :decimal
  end
end
