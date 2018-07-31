class AddAddressToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :address, :string
  end
end
