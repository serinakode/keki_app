class AddReferenceToProfile < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :user_id
    add_reference :profiles, :user, foreign_key: true  
  end
end
