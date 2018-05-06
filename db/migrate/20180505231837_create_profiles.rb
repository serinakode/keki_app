class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :username
      t.integer :user_address
      t.text :short_bio
      t.text :image_data

      t.timestamps
    end
  end
end
