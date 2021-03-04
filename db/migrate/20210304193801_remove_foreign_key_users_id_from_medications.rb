class RemoveForeignKeyUsersIdFromMedications < ActiveRecord::Migration[6.0]
  def change
    remove_column :medications, :user_id
  end
end
