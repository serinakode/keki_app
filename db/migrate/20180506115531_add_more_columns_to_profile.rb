class AddMoreColumnsToProfile < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :user_address, :integer
    add_column :profiles, :street_address, :string
    add_column :profiles, :town_suburb, :string
    add_column :profiles, :city, :string
    add_column :profiles, :state, :string
    add_column :profiles, :postcode, :integer
    add_column :profiles, :latitude, :decimal
    add_column :profiles, :logitude, :decimal 

  end
end
