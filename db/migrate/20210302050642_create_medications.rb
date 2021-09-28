# frozen_string_literal: true

class CreateMedications < ActiveRecord::Migration[6.0]
  def change
    create_table :medications do |t|
      t.string :name
      t.string :description
      t.integer :remaining
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
