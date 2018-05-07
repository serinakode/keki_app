class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.references :profile, foreign_key: true
      t.datetime :delivery_date
      t.text :delivery_comment

      t.timestamps
    end
  end
end
