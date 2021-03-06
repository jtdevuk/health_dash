class AddForeignKeyUserIdToMedications < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :medications, :users
  end
end
