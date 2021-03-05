class CreateMedicationDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :medication_doses do |t|
      t.references :medication, foreign_key: true
      t.references :dose, foreign_key: true
      t.timestamps
    end
  end
end
