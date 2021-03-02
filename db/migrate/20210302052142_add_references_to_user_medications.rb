class AddReferencesToUserMedications < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_medications, :user, foreign_key: true
    add_reference :user_medications, :medication, foreign_key: true
  end
end
