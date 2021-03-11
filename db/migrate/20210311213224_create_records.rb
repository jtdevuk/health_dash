class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.references :user
      t.string :name
      t.text :description
      t.string :category
      t.date :appointment_date
    end
  end
end
