class AddMoreColumnsToOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :profile_id, :integer
    add_column :orders, :amount, :integer
    add_column :orders, :stripe_charge_id, :integer
  end
end
