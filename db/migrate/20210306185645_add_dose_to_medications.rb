class AddDoseToMedications < ActiveRecord::Migration[6.0]
  def change
    add_column :medications, :dose, :integer
  end
end
