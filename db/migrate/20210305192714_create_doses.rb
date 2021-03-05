class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.integer :amount
      t.string :measure

      t.timestamps
    end
  end
end
